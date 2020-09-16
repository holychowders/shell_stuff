#!/usr/bin/env bash

cowsay_characters_dir=/usr/share/cowsay/cows/
cows=$(ls $cowsay_characters_dir)

if [[ $1 = '--help' ]]; then
  echo Help: Scroll through all the characters in $cowsay_characters_dir
  echo This program requires that cowsay be installed and the above directory exist

else
  echo Press Enter to go to next character

  for cow in $cows; do
    read proceed
    cowsay -f $cow $cow
    echo
  done 
fi
