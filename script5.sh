#!/bin/bash

summa=0

myfunction()
{
	echo "This is text from Function!!"
	echo "Num1= $1"
	echo "Num2= $2"
	summa=$(($1+$2))
}


myfunction 50 10
echo "summa = $summa"
