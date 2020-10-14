#! /bin/bash -x

read -p "Value a : " a
read -p "Value b : " b
read -p "Value c : " c

declare -A result
result[value1]=$(($a+$b*$c))
result[value2]=$(($a*$b+$c))
result[value3]=$(($c+$a/$b))
result[value4]=$(($a%$b+$c))


for value in ${result[@]}
do
	echo  $value
	array[i]=$value
	((i++))

done

echo "array" ${array[@]}

#decending Array

for ((i = 0; i<5; i++))
do
    for((j = 0; j<5-i-1; j++))
    do
        echo "$j"
	if [ ${array[j]} -lt ${array[$((j+1))]} ]
        then
            	# swap
            	temp=${array[j]}
            	array[$j]=${array[$((j+1))]}
            	array[$((j+1))]=$temp
		echo ${array[@]}
        fi
    done
done

echo "Array in sorted in Descending order :"
echo ${array[@]}
