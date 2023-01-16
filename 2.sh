#!/bin/bash
until [ "$var1" = end ]
do
echo "Введите значение переменной 1"
echo "(end - выход)"
read var1
echo "значение переменой 1=$var1"
done
exit 0
