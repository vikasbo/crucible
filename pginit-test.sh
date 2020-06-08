#!/bin/bash -x
dbName='jbilling_test'
fileName='data.sql'

if [ -n "$1" ]
 then
    fileName="$1"
fi

if [ -n "$2" ]
 then
    dbName="$2"
fi

dropdb -U jbilling $dbName
createdb -U jbilling $dbName
if [[ ${fileName: -4} == ".sql" ]]
then
	psql -U jbilling $dbName < $fileName
else
	if [[ ${fileName: -6} == "tar.gz" ]]
	then
		tar -axf $fileName -O | psql -U jbilling $dbName
	else
		bunzip2 -c $fileName | psql -U jbilling $dbName
	fi
fi

