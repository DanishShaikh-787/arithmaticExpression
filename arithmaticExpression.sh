#! /bin/bash -x

read -p "Value a : " a
read -p "Value b : " b
read -p "Value c : " c

value1=$(echo "scale=2; $a+$b*$c " |bc )
value2=$(echo "scale=2; $a*$b+$c " |bc )
value3=$(echo "scale=2; $c+$a/$b " |bc )
value4=$(echo "scale=2; $a%$b+$c " |bc )

echo "Compute (a+b*c) : " $value1
echo "Compute (a*b+c) : " $value2
echo "Compute (c+a/b) : " $value3
echo "Compute (a%b+c) : " $value4
