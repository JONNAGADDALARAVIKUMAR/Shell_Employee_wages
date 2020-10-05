#!/bin/bash/ -x
wageHour=20
dayHours=8
PartHours=4
echo -e "\n\n\t\t\tWelcome to Employee Wage Computation Program"
randValue=$(($RANDOM%10))
if [[ $randValue -le 6 ]]
then
echo -e "\n\tFull time Employee is present"
echo -e "\n\tWage : "$(($wageHour*$dayHours))
else
echo -e "\n\tFull time Employee is absent"
fi
if [[ $randValue -le 6 ]]
then
echo -e "\n\tPart time Employee is present"
echo -e "\n\tWage : "$(($wageHour*$PartHours))
else
echo -e "\n\tPart time Employee is absent"
fi
