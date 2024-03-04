#!/bin/bash
PSQL="psql -X --username=freecodecamp --dbname=number_guess --no-align --tuples-only -c"
# ask username
echo "Enter your username: "
read USERNAME
# check existed users
EXISTED_USER=$($PSQL "SELECT username FROM users WHERE username='$USERNAME'")
# if there's no existed user
if [[ -z $EXISTED_USER ]]
then
  # input new user
  NEW_USER=$($PSQL "INSERT INTO users (username) VALUES('$USERNAME')")
  echo "Welcome, $USERNAME! It looks like this is your first time here."
else
  # show user history
  USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")
  GAMES_PLAYED=$($PSQL "SELECT COUNT(game_id) FROM games WHERE user_id=$USER_ID")
  BEST_GAME=$($PSQL "SELECT MIN(guesses) FROM games WHERE user_id=$USER_ID")
  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi
# get user id
USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")
# generate secret number
SECRET_NUMBER=$(( $RANDOM % 1000 + 1 ))
# question
echo "Guess the secret number between 1 and 1000:"
read ANSWER
# if the answer is not equal to secret number
NUMBER_OF_GUESSES=1
while [[ ! $ANSWER -eq $SECRET_NUMBER ]]
do
  NUMBER_OF_GUESSES=$(expr $NUMBER_OF_GUESSES + 1)
  # check if the answer is not number
  if [[ ! $ANSWER =~ ^[0-9]+$ ]]
  then
    echo "That is not an integer, guess again:"
    read ANSWER
  # if the answer greater than secret number
  elif [[ $ANSWER -gt $SECRET_NUMBER ]]
  then
    echo "It's lower than that, guess again:"
    read ANSWER
  # if the answer less than secret number
  else
    echo "It's higher than that, guess again:"
    read ANSWER
  fi
done
echo "You guessed it in $NUMBER_OF_GUESSES tries. The secret number was $SECRET_NUMBER. Nice job!"
# insert game data
INSERT_DATA=$($PSQL "INSERT INTO games (user_id, guesses) VALUES($USER_ID, $NUMBER_OF_GUESSES)")
