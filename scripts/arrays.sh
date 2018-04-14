arr=(one two three)
arr2=(one two)
l1=${#arr[*]}
l2=${#arr2[*]}
sum=$(expr $l1 + $l2)
echo $sum
