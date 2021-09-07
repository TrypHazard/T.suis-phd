#! /bin/bash
#add string $1 to beginning of file $2

x=`echo "$1"; cat $2"`
echo "$x" > $2
