#!/bin/bash

function guess_files_count {
  local correct_guess=0

  local file_count=$(ls -l | grep "^-" | wc -l)
  
  while [[ $correct_guess -eq 0 ]]; do
    read -p "How many files are in the current directory? " user_guess
    
    if [[ $user_guess -lt $file_count ]]; then
      echo "Too low!"
    elif [[ $user_guess -gt $file_count ]]; then
      echo "Too high!"
    else
      correct_guess=1
      echo "Congratulations! You guessed it right!"
    fi
  done
}

guess_files_count

