function plier {
	local product=1
	for number in $@
	do
		let product=product*number
	done
	echo $product
}

function isiteven {
	local remainder=$(expr $1 % 2)
	if [[ remainder -eq 0 ]] ; then
		echo 1
	else 
		echo 0
	fi
}

function nevens {
	local sum=0
	for number in $@
	do
		if [[ $(isiteven $number) -eq 1 ]] ; then
			let sum=sum+1
		fi
	done
	echo $sum
}

function howodd {
	echo "$(nevens $@) / $#" | bc -l
}

function fib {
	local a=0
	local b=1
	local next=1
	if [[ $1 -eq 1 ]] ; then
		echo 0
	elif [[ $1 -eq 2 ]] ; then
		echo 0 1
	else
		local arr=($a $b)
		local count=2
		while [[ count -lt $1 ]]
		do
			let next=$a+$b
			a=$b
			b=$next
			arr+=($next)
			let count=count+1
		done
		echo ${arr[*]}
	fi
}

