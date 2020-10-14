#! /bin/bash -x

read -p "Value a : " a
read -p "Value b : " b
read -p "Value c : " c

value1=$(echo "scale=2; $a+$b*$c " |bc )
value2=$(echo "scale=2; $a*$b+$c " |bc )

echo "Compute (a+b*c) : " $value1
echo "Compute (a*b+c) : " $value2

