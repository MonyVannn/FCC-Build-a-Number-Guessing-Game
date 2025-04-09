#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

name_input() {
  echo "Enter your username:"
  read NAME
  n=${#NAME}

  if [[ ! $n -le 22 ]] || [[ ! $n -gt 0 ]]
  then
    name_input
  else
    NAME=$(echo $($PSQL "SELECT username FROM users WHERE username='$NAME';") | sed 's/ //g')
    if [[ ! -z $NAME ]]
    then
     
      USER_ID=$(echo $($PSQL "SELECT user_id FROM users WHERE username='$NAME';") | sed 's/ //g')
      NAME=$(echo $($PSQL "SELECT username FROM users WHERE user_id='$USER_ID';") | sed 's/ //g')
      GAME_PLAYED=$(echo $($PSQL "SELECT frequent_games FROM users WHERE user_id=$USER_ID;") | sed 's/ //g')
      BEST_GAME=$(echo $($PSQL "SELECT MIN(best_guess) FROM users LEFT JOIN games USING(user_id) WHERE user_id=$USER_ID;") | sed 's/ //g')
      echo "Welcome back, $NAME! You have played $GAME_PLAYED games, and your best game took $BEST_GAME guesses."
    else
      NAME=$NAME
      echo -e "\nWelcome, $NAME! It looks like this is your first time here."
    fi

    ANSWER=$(( $RANDOM % 1000 + 1 ))
    COUNT=0
    guess_input $NAME $ANSWER $COUNT
  fi
}

guess_input() {
  NAME=$1
  ANSWER=$2
  COUNT=$3
  USSER_GUESS=$4

  if [[ -z $USSER_GUESS ]]
  then
    echo "Guess the secret number between 1 and 1000:"
    read USSER_GUESS
  else
    echo "That is not an integer, guess again:"
    read USSER_GUESS
  fi

  COUNT=$(( $COUNT + 1 ))
  if [[ ! $USSER_GUESS =~ ^[0-9]+$ ]]
  then
    guess_input $NAME $ANSWER $COUNT $USSER_GUESS
  else
    CHECK_ANSWER $NAME $ANSWER $COUNT $USSER_GUESS
  fi
}

CHECK_ANSWER() {
  NAME=$1 
  ANSWER=$2 
  COUNT=$3
  USSER_GUESS=$4
  
  if [[ $USSER_GUESS -lt $ANSWER ]]
  then
    echo "It's lower than that, guess again:"
    read USSER_GUESS
  elif [[ $USSER_GUESS -gt $ANSWER ]]
  then
    echo "It's higher than that, guess again:"
    read USSER_GUESS
  else
    COUNT=$COUNT
  fi

  COUNT=$(( $COUNT + 1 ))
  if [[ ! $USSER_GUESS =~ ^[0-9]+$ ]]
  then
    guess_input $NAME $ANSWER $COUNT $USSER_GUESS
  elif [[ $USSER_GUESS -lt $ANSWER ]] || [[ $USSER_GUESS -gt $ANSWER ]]
  then
    CHECK_ANSWER $NAME $ANSWER $COUNT $USSER_GUESS
  elif [[ $USSER_GUESS -eq $ANSWER ]]
  then
    SAVE_USER $NAME $COUNT
    NUMBER_OF_GUESSES=$COUNT
    SECRET_NUMBER=$ANSWER
    echo "You guessed it in $NUMBER_OF_GUESSES tries. The secret number was $SECRET_NUMBER. Nice job! "
  fi

}

SAVE_USER() {
  NAME=$1 
  COUNT=$2

  CHECK_NAME=$($PSQL "SELECT username FROM users WHERE username='$NAME';")
  if [[ -z $CHECK_NAME ]]
  then
    INSERT_NEW_USER=$($PSQL "INSERT INTO users(username, frequent_games) VALUES('$NAME',1);")
  else
    GET_GAME_PLAYED=$(( $($PSQL "SELECT frequent_games FROM users WHERE username='$NAME';") + 1))
    UPDATE_EXIST_USER=$($PSQL "UPDATE users SET frequent_games=$GET_GAME_PLAYED WHERE username='$NAME';")
  fi
  SAVE_GAME $NAME $COUNT
}

SAVE_GAME() {
  NAME=$1 
  NUMBER_OF_GUESSES=$2

  USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$NAME';")
  INSERT_GAME=$($PSQL "INSERT INTO games(user_id, best_guess) VALUES($USER_ID, $NUMBER_OF_GUESSES);")
  NAME=$($PSQL "SELECT username FROM users WHERE user_id=$USER_ID;")
}


name_input
