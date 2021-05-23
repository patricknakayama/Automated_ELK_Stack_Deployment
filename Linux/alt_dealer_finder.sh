#!/bin/bash

# Script for finding dealer with 3 arguements
# Use the following syntax to run this script:
# Date <0310> Time <8:00:00 AM> Game <B>
# bash alt_dealer_finder.sh 0310 "8:00:00 AM" R
# Note: for the following error, use double brackets 
# [: =: unary operator expected

# Print Dealer Schedule and search for specified time
cat $1_Dealer_schedule | grep "$2" |

# first if/else
if [[ $3 == 'B' ]]
then
   awk -F" " '{print $1, $2, $3, $4}'
else

# second if/else
   if [[ $3 == 'R' ]]
   then
      awk -F" " '{print $1, $2, $5, $6}'
   else

# third if/else
      if [[ $3 == 'T' ]]
      then
         awk -F" " '{print $1, $2, $7, $8}'
      else
         echo "Please specify a game: B for Blackjack, R for Roulette, or T for Texas Hold Em."

# exit third if/else
      exit
      fi

# exit second if/else
   exit
   fi

# exit first if/else
exit
fi