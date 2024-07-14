#!/bin/bash

export $(grep -v '^#' .env | xargs)

echo $DBHost
echo $DBPort

#host="$DBHost"
#host=`printf "%s:%s" "$host" "$DBPort"`
#echo $host


#until psql -h "$host" -U "postgres" -c '\l'; do
#  >&2 echo "Postgres is unavailable - sleeping"
#  sleep 1
#done
  
#>&2 echo "Postgres is up - executing command"

./wait-for-it.sh -h $DBHost -p $DBPort -t 50 -- echo "PostGres Is Up"

sleep 30

./wait-for-it.sh -h $DBHost -p $DBPort -t 30 -- echo "PostGres Is Up"

./main
