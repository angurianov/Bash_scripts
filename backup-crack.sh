#!/usr/bin/env bash

echo "Хотите скачать все пароли?"

read $answer
username=`whoami`

if [ : $answer = yes ]
	then
		if [ $username != root ]
			then
				echo "Вы не root! Завершение скрипта"
				exit 1
		fi
	else
		echo "Не хотите, завершение скрипта"
		exit 1
fi
