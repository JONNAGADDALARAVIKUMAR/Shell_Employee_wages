#!/bin/bash/ -x
echo -e "\n\tWelcome to Employee Wage Computation programme"
randValue=$(($RANDOM%10))
if [ $randValue -le 6 ]
then
echo -e "\n\tEmployee is present"
else
echo -e "\n\tEmployee is absent"
fi
