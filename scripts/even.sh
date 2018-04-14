remainder=$(echo "$1 % 2" | bc)
if [[ remainder -eq 0 ]] ; then
	echo even
else
	echo odd
fi
