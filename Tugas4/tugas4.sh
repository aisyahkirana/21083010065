#!/bin/bash

index=0

echo -n "Batas Bilangan: "
read batas

while [ $index -lt $batas ]
do
  remainder=$(( $index % 2 ))

  if [ $remainder -ne 0 ]
  then
    echo $index
  fi

  index=$(($index+1))

done

echo "Selesai"
