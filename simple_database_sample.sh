#!/bin/bash

# Simple file based storage system
# to use run: source simple_database_sample.sh

echo "usage"
echo "db_put [key] [value]"
echo "db_get [key]"

db_put() {
  echo "$1,$2" >> database.txt
}


db_get() {
  grep "^$1," database.txt | sed -e "s/^$1,//" | tail -n 1
}
