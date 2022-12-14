# Muat Library yang Akan Digunakan
from os import getpid
from time import time, sleep
from multiprocessing import Pool, Process

# Inisialisasi Fungsi
batas = int(input("Masukkan batas angka : "))

def cetak(i):
  for i in range(batas):
      if i % 2 == 0:
         print(f"angka ganjil-{i+1}"," - ID proses", getpid() )
      else:
         print(f"angka genap-{i+1}"," - ID proses", getpid() )
  sleep(1)

# 1 - Pemrosesan Sekuensial
print("Pemrosesan Sekuensial")
sekuensial_awal = time()

for i in range (1):
  cetak(i)

sekuensial_akhir = time()
print(" ")

# 2- Multiprocessing dengan Kelas Process
print("Multiprocessing dengan Kelas Process")
kumpulan_proses=[]
proses_awal=time()

for i in range(1):
    p = Process(target=cetak, args=(i,))
    kumpulan_proses.append(p)
    p.start()

for i in kumpulan_proses:
    p.join()

proses_akhir=time()
print(" ")

# 3 - Multiprocessing dengan Kelas Pool
print("Multiprocessing dengan Kelas Pool")
pool_awal = time()

pool = Pool()
pool.map(cetak, range(0,1))
pool.close()

pool_akhir = time()
print(" ")

# Waktu Eksekusi
print("Waktu eksekusi Sekuensial		: ",sekuensial_akhir - sekuensial_awal,"detik")
print("Waktu eksekusi Multiprocessing.Process	: ",proses_akhir - proses_awal, "detik")
print("Waktu eksekusi Multiprocessing.Pool	: ",pool_akhir - pool_awal, "detik")
