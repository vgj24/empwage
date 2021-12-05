#!/bin/bash -x

isPartTime=1
isFullTime=2
maxHoursInMonth=100
empRatePerHour=20
numOfWorkingDays=20
totalEmpHr=0
totalWorkingDays=0

function getWorkingHours()
{
	case $1 in
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
}

function getEmpWage(){
		echo $(($1*$empRatePerHour))
}

while [[ $totalEmpHr -lt $maxHoursInMonth 
&& $totalWorkingDays -lt $numOfWorkingDays ]]
do
	((totalWorkingDays++))
	empCheck=$((RANDOM%3))
	getWorkingHours $empCheck
	totalEmpHr=$(($totalEmpHr+$empHrs))
#	dailyWages[$totalWorkingDays]=$(($empHrs+$empRatePerHour))
	dailyWages[$totalWorkingDays]=$(getEmpWage $empHrs)
done


#totalSalary="$()"
totalSalary=$(($totalEmpHr*$empRatePerHour))
echo ${dailyWages[@]}
