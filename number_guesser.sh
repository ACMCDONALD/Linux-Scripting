#!/bin/bash

#Author; Andrew McDonald
#Name: number_guesser.sh
#Description: A number guessing game
#Date Created: February 7, 2023
#Date Modified: February 8, 2023

#pick a random number between 1-20
number=$((1 + $RANDOM % 20))

#clear the screen
clear

#output to user
echo Im thinking of a number between 1 and 20.
echo

#take input
read -p "Can you guess what it is? (press q to quit)"  input

#while input value is not equal to q loop
while [ $input != q ]
   do
      #if the guess is the same as the random number then success
      if  [ $input -eq $number ]
        then
            clear
            echo "Great job, you guessed correctly!"
            echo "Do you want to keep playing? y/n "
            read playing
            #does the user want to keep playing? yes: new random number generated, no: exit
            case $playing in
                y)
                   number=$((1 + $RANDOM % 20))
                   ;;
                n)
                   echo "Thanks for playing"
                   input=q
                   ;;
            esac
       #if the guess is incorrect, guess again.
          else
            clear
            echo "Choose another number"
            read input
       fi
    done
