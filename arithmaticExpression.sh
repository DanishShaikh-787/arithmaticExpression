#! /bin/bash -x

read -p "Value a : " a
read -p "Value b : " b
read -p "Value c : " c

declare -A result
result[value1]=$(echo "scale=2; $a+$b*$c " |bc )
result[value2]=$(echo "scale=2; $a*$b+$c " |bc )
result[value3]=$(echo "scale=2; $c+$a/$b " |bc )
result[value4]=$(echo "scale=2; $a%$b+$c " |bc )


echo "Dict " ${result[@]}
