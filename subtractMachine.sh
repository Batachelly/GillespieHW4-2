#!/bin/bash
#What this Bash script does:
#This Bash script takes 2 command line arguments and
#Subtracts the smaller from the larger and then prints out the difference to stdout
#Then Counts down from the difference to 1 while printing each count to stdout

ARG1=$1
ARG2=$2

subtract() {

if [ $ARG1 -gt $ARG2 ]
then
        echo $ARG1 is larger then $ARG2
	echo Difference = $((counter= $ARG1 - $ARG2 ))
else
        echo $ARG2 is larger then $ARG1
	echo Difference = $((counter= $ARG2 - $ARG1 ))
fi
}


# Can also use the variable names instead


echo
echo First argument is $1.
echo Second argument is $2.
echo
subtract $ARG1 $ARG2
echo
while [ $counter -gt 0 ]
do
        echo Count Down = $counter
        ((counter--))
done
