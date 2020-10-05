#!/bin/bash/ -x
wageHour=20
dayHours=8
echo -e "\n\n\t\t\tWelcome to Employee Wage Computation Program"
randValue=$(($RANDOM%10))
if [[ $randValue -le 6 ]]
then
echo -e "\n\tEmployee is present"
echo -e "\n\tWage : "$(($wageHour*$dayHours))
else
echo -e "\n\tEmployee is absent"
fi
