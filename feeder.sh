#!/bin/bash

FILE="users.csv"

for x in $(cat $FILE)
do
  user=$(echo $x | cut -d',' -f1)
  shell=$(echo $x |cut -d',' -f2)
  ./checker.sh $user $shell
done
