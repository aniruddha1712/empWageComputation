#! /bin/bash -x

echo "Welcome to Employee Wage Computation Program"

isFullTime=1
isPartTime=2
empRatePerHr=20
totalSalary=0
workingDays=20
totalWorkingHrs=0
empHrs=0
day=1

while [[ $day -le 20 && $totalWorkinHrs -le 100 ]]
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
	totalWorkingHrs=$(($totalWorkingHrs + $empHrs))
	if [ $totalWorkingHrs -gt 100 ]
	then
		totalWorkingHrs=$(($totalWorkingHrs - $empHrs))
		break
	fi

	salary=$(($empHrs * $empRatePerHr))
	totalSalary=$(($totalSalary + $salary))
	((day++))
done
