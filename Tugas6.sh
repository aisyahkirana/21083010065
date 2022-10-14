#!/bin/bash
#input grades fro students

echo -n "Input: "
read  ipk
echo "Masukkan IPK : "

#clear
i=0

#calculate ipk and ips
for ((i=1; i<=ipk; i++))
do
	#to input from user
	read tulis[$i]
	let jumlah=$jumlah+${tulis[$i]};
	let ipk_mhs=$jumlah/$ipk;
done

#Output
echo "IPS mhs: " $jumlah/$ipk
echo "IPK mhs: " $ipk_mhs
