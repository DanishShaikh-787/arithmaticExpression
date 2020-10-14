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
	array[i]=$value
	((i++))
done
echo "array" ${array[@]}

#Decending Array

for ((i = 0; i<5; i++))
do
    for((j = 0; j<5-$i; j++))
    do
	if [[ ${array[j]} -lt ${array[$j+1]} ]]
        then
            temp=${array[j]}
            array[$j]=${array[$j+1]}
            array[$j+1]=$temp
        fi
    done
done
echo "Array in sorted Descending order :"
echo ${array[@]}

#Ascending Array

for ((i = 0; i<5; i++))
do
    for((j = 0; j<5-$i; j++))
    do
	if [[ ${array[j]} -gt ${array[$j+1]} ]]
        then
            temp=${array[j]}
            array[$j]=${array[$j+1]}
            array[$j+1]=$temp
        fi
    done
done
echo "Array in sorted Ascending order :" 
echo ${array[@]}

