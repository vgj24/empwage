#!/bin/bash -x

isPartTime=1
isFullTime=2
totalSalary=0
empRatePerHr=20
numOfWorkingDays=20
for (( day=1; day<=$numOfWorkingDays; day++))
do
	empCheck=$((RANDOM%3))
	case $empCheck in
			$isPartTime)
				empHrs=4
				;;
			$isFullTime)
				empHrs=8
				;;
				*)
esac
	salary=$(($empHrs * $empRatePerHr))
	totalSalary=$(($salary + $totalSalary))
done
echo "$totalSalary"
