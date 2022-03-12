#! /bin/bash -x

echo "Welcome to Employee Wage Computation Program"

isPartTime=1
isFullTime=2
maxWorkingHrs=100
maxWorkingDays=20
empRatePerHr=20
totalSalary=0
totalWorkingHrs=0
totalWorkinHrs=0

function calculateWorkingHrs() {
	case $1 in
                $isFullTime)
			workingHrs=0
			;;
		$isPartTime)
			workingHrs=8
			;;
		*)
			workingHrs=4
			;;
	esac
	echo $workingHrs
}

function calcDailyWage() {
	local workingHrs=$1
	wage=$(($workingHrs * $empRatePerHr))
	echo $wage
}

while [[ $totalWorkingDays -le $maxWorkingDays && $totalWorkingHrs -lt $maxWorkingHrs ]]
do
	((totalWorkingDays++))
	workHours="$(calculateWorkingHrs $((RANDOM%3)) )"
	totalWorkingHrs=$(($totalWorkingHrs + $workHours))
	empDailyWage[$totalWorkingDays]="$( calcDailyWage $workHours )"
done

totalSalary="$( calcDailyWage $totalWorkingHrs )"
echo "daily wage" ${empDailyWage[@]}
