SELECT * FROM Sepatu
WHERE Stok <= '15';

SELECT * FROM Transaksi
WHERE Total_Harga <= '1000000';

SELECT * FROM Sepatu
WHERE Stok <= '15' OR No_Sepatu <= '42';

SELECT * FROM Transaksi
WHERE Total_Harga <= '1000000' OR Jumlah_Sepatu >= '2';

SELECT * FROM Sepatu
WHERE Stok <= '5' AND No_Sepatu >= '40';

SELECT * FROM Transaksi
WHERE Total_Harga >= '1500000' AND Jumlah_Sepatu <= '3';

SELECT * FROM Sepatu
WHERE Tanggal_Produksi >= '2020-10-30' AND Harga_Sepatu >= '500000' OR Merk_Sepatu = 'Champion';

SELECT * FROM Transaksi
WHERE Tgl_Garansi >= '2022-10-10' AND Total_Harga <= '2000000' OR Jumlah_Sepatu <= 2;

SELECT * FROM Sepatu
WHERE NOT Tanggal_Produksi >= '2021-03-03';

SELECT * FROM Transaksi
WHERE NOT Tgl_Nota >= '2022-05-05';

SELECT * FROM Pembeli
WHERE Nama_Pembeli LIKE 'a%';

SELECT * FROM Sepatu
WHERE Merk_Sepatu LIKE 'c%';

SELECT * FROM Sepatu
WHERE No_Sepatu IN(41, 42, 43);

SELECT * FROM Transaksi
WHERE Jumlah_Sepatu IN(3,4);

UPDATE Pembeli
SET Nama_Pembeli = 'Ang Wilson Alexander', Alamat_Pembeli = 'Jln. Saritem no 60, Bandung', No_Telepon = '1119998887', Email = 'wilson@gmail.com'
WHERE Id_Pembeli = 22100001;

UPDATE Pembeli
SET Nama_Pembeli = 'Rivan Wiratama', Alamat_Pembeli = 'Jln. Kebon Jeruk no 1, Bekasi', No_Telepon = '0193817311', Email = 'rivan@gmail.com'
WHERE Id_Pembeli = 22100002;

UPDATE Pembeli
SET Nama_Pembeli = 'Farrel Alexander', Alamat_Pembeli = 'Jln. Manga Dua no 99, Medan', No_Telepon = '9281038173', Email = 'farrel@gmail.com'
WHERE Id_Pembeli = 22100003;

DELETE FROM Pembeli WHERE Id_Pembeli = '22100006';
DELETE FROM Pembeli WHERE Id_Pembeli = '22100008';

DELETE FROM Sepatu WHERE Id_Sepatu = '21220001';
DELETE FROM Sepatu WHERE Id_Sepatu = '21220019';

DELETE FROM Transaksi WHERE No_Nota = '221010001';
DELETE FROM Transaksi WHERE No_Nota = '221010003';

SELECT * FROM Pembeli;
SELECT * FROM Sepatu;
SELECT * FROM Transaksi;

DROP DATABASE Toko_Sepatu;