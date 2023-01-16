#!/usr/bin/env	bash

datefolder=`date "+%Y-%m-%d"`

if [ ! -d "/backup" ]
then
	echo "Директория не существует"
	mkdir /backup
else
	echo "Директория существует"
fi

echo $datefolder
echo ""

mkdir /backup/$datefolder

cd /
tar czvf /backup/$datefolder/etc.tar.gz etc/ > /dev/null
