#!/bin/bash
#Set colours to be used:
RED='\033[1;31m'
BLUE='\033[1;34m'
GREEN='\033[1;32m'
NC='\033[0m' # No Color
#Read how many changed files there are:
NUM_FILES=$(git diff HEAD --name-only | wc -l)
echo -e "There are ${RED} $NUM_FILES ${NC} changed files in this git repo"
#For each file show changes
TOTAL=$(($NUM_FILES-$NUM_FILES))
count=1
git diff HEAD --name-only |
while read line
do

	#Read the amount of words in the file from the past version
	REM=$(git show HEAD:$line | wc -w)
	#Read the amount of words in the file in the current version
	ADD=$(cat $line | wc -w)
	DIF=$(($ADD-$REM))
	TOTAL=$(($TOTAL+$DIF))
	echo -e "Amount of words added in file ${BLUE}  "$line" ${NC} since last commit:${GREEN} $DIF ${NC}"
	if [ $count == $NUM_FILES ]
	then
		echo -e "Total amount of words added in all files since last commit:${GREEN} $TOTAL ${NC}"
	fi
	((count++))
done
