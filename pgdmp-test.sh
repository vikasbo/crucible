#!/bin/bash -x
dbName='jbilling_test'
if [ -n "$1" ]
 then
    dbName="$1"
fi
suffix=''
if [ -n "$2" ]
 then
    suffix="$2"
fi

echo "Backing up DB: $dbName"
pg_dump -U jbilling --clean $dbName | bzip2 > $dbName-`date +%Y%m%d-%H%M%S%3N`_$suffix.sql.bz2
