#assignment file

file_no=$( ls | wc -l )
echo $file_no
function check {
	echo "guess the number of files in the directory?"
	read val
	if [[ $val -eq $file_no ]]
	then
		equal
	else
		notequal
	fi
}
function equal {
	echo "value is equal"
}
function notequal {
	echo "value is not equal"
	check
}
check
