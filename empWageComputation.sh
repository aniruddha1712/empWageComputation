#! /bin/bash -x

echo "Welcome to Employee Wage Computation Program"

isFullTime=1
isPartTime=2
empRatePerHr=20
totalSalary=0
workingDays=20

for (( day=1; day<=$workingDays; day++ ))
do
	empCheck=$((RANDOM%3))
		case $empCheck in
			$isFullTime)
				empHrs=8
				;;
			$isPartTime)
				empHrs=4
				;;
			*)
				empHrs=0
				;;

		esac
		salary=$(($empHrs * $empRatePerHr))
		totalSalary=$(($totalSalary + $salary))
done
