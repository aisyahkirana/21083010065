echo -e "\nPlease enter number grades for the students in one line like 23 44 57 89"
#input grades for students
declare -i stunum=1 n1 n2 n3 n4 sum avg N slimit
echo -ne "\nNumber of Students : "
read N

slimit=N+1

while [ $stunum -lt $slimit ]
do
	echo -ne "Student #$stunum : "

	#Read the four number grades
	read n1 n2 n3 n4

	#Compute the average
	sum=n1+n2+n3+n4
	avg=sum/4
	echo -n "Average = $avg, Grade ="

	#Compute the corresponding letter grade now
	if [ $avg -lt 65 ]
	then
		echo -e " F\n"
	elif [ $avg -lt 70 ]
	then
		echo -e " D\n"
	elif [ $avg -lt 80 ]
	then
		echo -e " C\n"
	elif [ $avg -lt 90 ]
	then
		echo -e " B\n"
	else
		echo -e " A\n"
	fi

	#Show the Student Number
	stunum=stunum+1
done
