#!/bin/bash

echo 'How many database you want to create?'
read countDatabase

for (( c=1; c<=$countDatabase; c++ ))
do
echo 'Please enter name of the '$c' database:'
   read databaseName

sudo su postgres <<EOF
createdb $databaseName;
echo "database '$databaseName' created."
EOF
done
exit
