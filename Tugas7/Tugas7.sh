#!/bin/bash

# Mendeklarasikan Fungsi
Nilai() {
	parameter1=$1
	parameter2=$2
	echo "$parameter1"
	echo "$parameter2"
}

echo "Masukkan Panjang : "
read p
echo "Masukkan Lebar : "
read l
printf "\n"

LuasPersegi() {
let luas=$p*$l
echo -e "Luas Persegi : \n $luas"
}

LuasPersegi $p $l
