#! /bin/bash -x

echo "Welcome to Employee Wage Computation Program"

isPresent=1
isFullTime=1
empRatePerHr=20
randomCheck=$((RANDOM%2))
empCheck=$((RANDOM%2))

if [ $isPresent -eq $randomCheck ]
then
	echo "Employee is Present"
	if [ $isFullTime -eq $empCheck ]
	then
		echo "Employee is Fulltime"
		empHrs=8
	else
		echo "Employee is Parttime"
		empHrs=4
	fi
else
	echo "Employee is Absent"
	empHrs=0
fi

salary=$(($empHrs * $empRatePerHr))
