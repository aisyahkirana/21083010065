a=20
b=88

if [ $a == $b ]
then
  echo "a sama dengan b"
elif [ $a -gt $b ]
then
  echo "a lebih besar dari b"
elif [ $a -lt $b ]
then
  echo "a lebih kecil dari b"
else
  echo "Tidak ada kondisi yag memenuhi"
fi
