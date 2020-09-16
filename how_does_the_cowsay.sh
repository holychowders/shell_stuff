#!/usr/bin/env bash

say_this=$@
cowsay_characters_dir=/usr/share/cowsay/cows/

if [ -d $cowsay_characters_dir ]; then
  cows=$(ls $cowsay_characters_dir)
else
  echo Error: Characters not found in $cowsay_characters_dir. Is cowsay installed?
  exit 1
fi


if [[ -z $@ || '--help' = $1 ]]; then
  echo Help: Pass in a string for every character in $cowsay_characters_dir to say
  echo This program requires that cowsay be installed and the above directory exist
else
  echo Press Enter to go to the next character

  for cow in $cows; do
    read contin
    cowsay -f $cow $say_this
    echo
  done 
fi
