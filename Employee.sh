#!/bin/bash/ -x

fullTime()
{

max=100
echo -e "\n\n\t\tDay\tAttendence\tHours Worked\tDaily Wage\t    Total Wage"
for((i=1;i<=20;i++))
do
randValue=$(($RANDOM%10))
if [[ $randValue -le 4 ]]
then
        if [[ $hrs -le 100 ]]
        then
                ((present++))
                ((hrs+=8))
                echo -e "\t\t "$i"\t    PR\t\t    "$hrs"\t\t   160.00\t\t"$(($hrs*20))
        elif [[ $hrs -ge 100 ]]
        then
                echo -e "\t\t "$i"\t    AB\t\t    "$hrs"\t\t   0.00\t\t\t"$(($hrs*20))
	fi

else
        echo -e "\t\t "$i"\t    AB\t\t    "$hrs"\t\t   0.00\t\t\t"$(($hrs*20))
fi

done
}

parttime()
{

max=50
echo -e "\n\n\t\tDay\tAttendence\tHours Worked\tDaily Wage\t   Total Wage"
        for((i=1;i<=20;i++))
        do
                randValue=$(($RANDOM%10))
                if [[ $randValue -le 4 ]]
                then
                      if [[ $hrs -lt 50 ]]
                      then
                             ((present++))
                             ((hrs+=4))
                             echo -e "\t\t "$i"\t    PR\t\t    "$hrs"\t\t   80.00\t\t"$(($hrs*20))
                      elif [[ $hrs -ge 50 ]]
                      then
		             echo "\t\t "$i"\t    AB\t\t    "$hrs"\t\t   0.00\t\t\t"$(($hrs*20))

                      fi
		else
                      echo -e "\t\t "$i"\t    AB\t\t    "$hrs"\t\t   0.00\t\t\t"$(($hrs*20))
		fi
	done
}





hrs=0
present=0
max=0
totalPay=0

echo "\n\n\t\t\tWelcome to Employee Wage Computation programme"
echo -e -n "\tChoose type of Employee\n\t\t1.Full Time\n\t\t2.Part Time\n\tEnter Choice : "
read type
case $type in

1)
fullTime ;;

2)
parttime ;;
*)
echo -e"\n\tInvalid entry"
esac

if [[ $hrs -gt $max ]]
then
((totalPay=$max*20))

else

((totalPay=$hrs*20))
fi
echo -e "\t\t\t\t\t\t\t\t\t      --------\n\t\t\t\t\t\t\t\t\tTotal\t: "$totalPay"\n\n\n\t\tNo. of Working days\t: 20 \n\n\t\tNo. of days Worked\t: "$present"\n\n\t\tNo. of Absents\t\t: "$((20-$present))"\n\n\t\ttotal Working Hours\t: "$hrs"\n\n\t\tMaximum Working Hours\t: "$max
echo -e "\n\t\tTotal wage\t\t: "$totalPay
