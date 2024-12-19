#!/usr/bin/env bash
# File: guessinggame.sh

# global variables
guess_is_false=true # only false when the user guesses the correct number of files

# helper functions
# a function checking if user's guess matchs the number of files in the current directory
function guess_check {
#  local secret_number=$(pwd | ls -l | grep "^-" | wc -l)
  local secret_number=$(find . -maxdepth 1 -type f | wc -l)
  if [[ $@ -gt $secret_number ]]; then 
    echo -e "Too high\n"
  elif [[ $@ -lt $secret_number ]]; then
    echo -e "Too low\n"
  else
    guess_is_false=false
  fi
}

# main

while $guess_is_false; do
  echo "How many files are in the current directory?"
  echo "Press Enter after your guess: "
  read guess_number
  if [[ $guess_number =~ ^[0-9]+$ ]]; then
    guess_check $guess_number
  fi
done

echo -e "\nCongratulations!\nYou guessed the number of files in the current directory."
