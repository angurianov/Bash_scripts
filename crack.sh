#!/usr/bin/env bash

echo "Хотите скачать все пароли? Напишите yes или no"

read answer

username=`whoami`

case $answer in
	"yes") echo "продолжаем скрипт";;
	"no") echo "ответ No, завершение"
		exit 1;;
	*) echo "Нужно ввести yes или no, Завершение скрипта"
esac

if [ $username != root ]; then
	echo "Вы не root! Завершение скрипта"
	exit 1
fi

cut -d ":" -f 1,2 /etc/shadow > /root/scripts/hack.txt

if [ -a "/root/scripts/hack.txt" ]; then
	echo "Файл /root/scripts/hack.txt создан"
else
	echo "Файл не создан"
fi

