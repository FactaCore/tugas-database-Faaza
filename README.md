# tugas-database-Faaza
Tugas Membuat Database Stasiun Bus

Nama Database: DB_Bus_Faaza
Struktur table: 
1. Daftar_Bus

+-----------+----------------------+-------------+--------+--------------+-----------+--------------+
| Nama_Bus  | Tujuan               | Jadwal      | Harga  | Nama_Sopir   | kapasitas | kelas_bus    |
+-----------+----------------------+-------------+--------+--------------+-----------+--------------+
| CBI       | Lebak Bulus-Cileunyi | 14.00-17.00 |  45000 | Ari          |        32 | Tidak ber AC |
| Goodwill  | Semarang-Lasem       | 13.00-16.00 |  49000 | Roni         |        40 | AC           |
| MGI       | Tasik-Bogor          | 10.30-14.00 | 158000 | Budi Prakoso |        36 | Tidak ber AC |
| Primajasa | Bandung-Merak        | 10.30-14.00 |  85000 | Heri         |        30 | AC           |
+-----------+----------------------+-------------+--------+--------------+-----------+--------------+
3. Data_Bus

+----+----------+--------------+------------------+-----------+---------------+
| id | kode_bus | nama_sopir   | terakhir_dilihat | warna_bus | aktivitas_bus |
+----+----------+--------------+------------------+-----------+---------------+
|  1 | HAS_29   | Roni         | Bandung          | Hitam     | Berangkat     |
|  2 | SR_13    | Ari          | Cibitung         | Putih     | Delay         |
|  3 | GS_29    | Heri         | Cikampek         | Merah     | On The Way    |
|  4 | JAN_17   | Budi Prakoso | Cikarang         | Putih     | On The Way    |
|  5 | YAN_22   | Heri         | Cibubur          | Kuning    | On The Way    |
|  6 | JAN_17   | Budi Prakoso | Cikarang         | Putih     | On The Way    |
|  7 | AlI_07   | Ari          | Bandung          | Hitam     | Berangkat     |
|  8 | AS_30    | Roni         | Bogor            | Merah     | Sampai        |
|  9 | AS_05    | Budi Prakoso | Cibitung         | Hitam     | On The Way    |
| 10 | IL_04    | Heri         | Bogor            | Merah     | Sampai        |
| 11 | GAL_11   | Budi Prakoso | Bandung          | Kuning    | Berangkat     |
| 12 | TWI_98   | Roni         | Cikarang         | Putih     | On The Way    |
+----+----------+--------------+------------------+-----------+---------------+
4. Penumpang

+----+--------------------+---------------+------+--------------------+
| id | nama               | jenis_kelamin | usia | riwayat_penyakit   |
+----+--------------------+---------------+------+--------------------+
|  1 | Albila Khairunnisa | P             |   23 | Tidak ada          |
|  2 | Triwijaya Galuh    | L             |   56 | Tidak ada          |
|  3 | Sri Rahma Ayu      | P             |   12 | Tidak ada          |
|  4 | Mahesa Narendra    | L             |   34 | Asma (Sesak Napas) |
|  5 | Naura Nadhifa      | P             |   21 | Vertigo            |
+----+--------------------+---------------+------+--------------------+
5. Keberangkatan

+----+------------+---------------+-----------------------+---------------+----------+--------+-----------------------+-----------+
| id | nama_depan | nama_belakang | stasiun_keberangkatan | kedatangan    | boarding | sampai | tanggal_keberangkatan | status    |
+----+------------+---------------+-----------------------+---------------+----------+--------+-----------------------+-----------+
|  1 | Maria      | Rizma         | Cimahi Utara          | Jakarta       | 18:30    | 21:20  | 2025-11-28            | Menunggu  |
|  2 | Defanty    | Veninda       | Cimahi Utara          | Jakarta       | 18:30    | 21:20  | 2025-11-30            | Berangkat |
|  4 | Yunita     | Priatna       | Purwakarta            | Jakarta       | 18:30    | 21:20  | 2025-12-05            | Berangkat |
|  5 | Hanifa     | Supartiwi     | Bekasi                | Jakarta       | 18:30    | 21:20  | 2025-12-01            | Berangkat |
|  6 | Sri        | Ayu           | Cimahi Utara          | Jakarta       | 18:30    | 21:20  | 2025-12-10            | Menunggu  |
|  7 | Galuh      | Suparman      | Cimahi Utara          | Jakarta Pusat | 19:00    | 22:00  | 2025-11-25            | Berangkat |
+----+------------+---------------+-----------------------+---------------+----------+--------+-----------------------+-----------+


