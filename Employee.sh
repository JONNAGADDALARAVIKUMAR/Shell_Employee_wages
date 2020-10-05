#!/bin/bash/ -x
wageHour=20
dayHours=8
PartHours=4
echo -e "\n\n\t\t\tWelcome to Employee Wage Computation Program"
randValue=$(($RANDOM%10))
echo -n -e "\n\n\tSelect type of Employee\n\t\t1.Full time Emloyee\n\t\t2.Full time Employee\n\tOPTION : "
read empType
case $empType in
1)
if [[ $randValue -le 6 ]]
then
echo -e "\n\tFull time Employee is present"
echo -e "\n\tWage : "$(($wageHour*$dayHours))
else
echo -e "\n\tFull time Employee is absent"
fi ;;

2)
if [[ $randValue -le 6 ]]
then
echo -e "\n\tPart time Employee is present"
echo -e "\n\tWage : "$(($wageHour*$PartHours))
else
echo -e "\n\tPart time Employee is absent"
fi ;;
esac
