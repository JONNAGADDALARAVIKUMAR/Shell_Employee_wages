#!/bin/bash/ -x
wageHour=20
dayHours=8
PartHours=4
present=0
absent=0
wage=0
echo -e "\n\n\t\t\tWelcome to Employee Wage Computation Program"
echo -n -e "\n\n\tSelect type of Employee\n\t\t1.Full time Emloyee\n\t\t2.Full time Employee\n\tOPTION : "
read empType

for ((i=0; i<20 ;i++))
do
randValue=$(($RANDOM%10))
case $empType in
1)
if [[ $randValue -le 5 ]]
then
((present++))
((wage+=$(($wageHour*$dayHours))))
else
((absent++))
fi ;;

2)
if [[ $randValue -le 5 ]]
then
((present++))
((wage+=$(($wageHour*$PartHours))))
else
((absent++))

fi ;;
esac
done
echo -e "\n\tNo of days Present : "$present
echo -e "\n\tNo of days Absent : "$absent
echo -e "\n\tTotal wage per month : "$wage
