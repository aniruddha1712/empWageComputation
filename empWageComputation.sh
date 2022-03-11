#! /bin/bash -x

echo "Welcome to Employee Wage Computation Program"

isPresent=1
empRatePerHr=20
randomCheck=$((RANDOM%2))

if [ $isPresent -eq $randomCheck ]
then
	echo "Employee is Present"
	empHrs=8
	salary=$(($empHrs * $empRatePerHr))
else
	echo "Employee is Absent"
	salary=0
fi
