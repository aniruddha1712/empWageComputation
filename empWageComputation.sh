#! /bin/bash -x

echo "Welcome to Employee Wage Computation Program"

function calculateWorkingHrs() {
	case $1 in
                0)
			workingHrs=0
			;;
		1)
			workingHrs=8
			;;
		2)
			workingHrs=4
			;;
	esac
	echo $workingHrs
}

empRatePerHr=20
totalSalary=0
totalWorkingHrs=0
day=1

while [[ $day -le 20 && $totalWorkingHrs -lt 100 ]]
do
	empHrs=$(calculateWorkingHrs $((RANDOM%3)))
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
