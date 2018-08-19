#assignmenwqt file

file_no=$( ls | wc -l )
#echo $file_no
function check {
	echo "guess the number of files in the directory?"
	read val
	while [[ $val -ne $file_no ]]
	do
		notequal
		echo "please reenter the choice"
		read val
	done
	if [[ $val -eq $file_no ]]
	then
		equal
	fi
}
function equal {
	echo "congratulations! value entered is correct"
}
function notequal {
	#echo "value is not equal"
	if [[ $val -lt $file_no ]]
	then
		echo "value is less than the number of files"
	elif [[ $val -gt $file_no ]]
	then
		echo "value is greated than the number of files"
	fi
}
check
