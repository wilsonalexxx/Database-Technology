CREATE DATABASE Toko_Sepatu;
USE Toko_Sepatu;

CREATE TABLE Pembeli(
	Id_Pembeli INT PRIMARY KEY NOT NULL,
    Nama_Pembeli VARCHAR(50) NOT NULL,
    Alamat_Pembeli VARCHAR(100) NOT NULL,
    No_Telepon VARCHAR(15) NOT NULL,
    Email VARCHAR(50) NOT NULL
);

INSERT INTO Pembeli VALUES(
	22100001,
    'Abraham Kusnadi',
    'Jln. Setiabudi, no. 56, Bandung',
    '2264758264',
    'abraham@gmail.com'
);

INSERT INTO Pembeli VALUES(
	22100002,
    'Irfan Maulana',
    'Jln. Sudirman, no. 143, Surabaya',
    '3189546272',
    'irfan@gmail.com'
);

INSERT INTO Pembeli VALUES(
	22100003,
    'Andi Zulhikam',
    'Jln. Ahmad Yani, no. 55, Surabaya',
    '3142850182',
    'andi@gmail.com'
);

INSERT INTO Pembeli VALUES(
	22100004,
    'Kelvin Tjoa',
    'Jln. MT. Haryono no 33, Balikpapan',
    '4016789234',
    'kelvin@gmail.com'
);

INSERT INTO Pembeli VALUES(
	22100005,
    'Gerald Pranata',
    'Jln. Ahmad Yani no 55, Yogyakarta',
    '5050167283',
    'gerald@gmail.com'
);

INSERT INTO Pembeli VALUES(
	22100006,
    'Justin Baskara',
    'Jln. Kelenteng no 100, Yogyakarta',
    '5045627381',
    'justin@gmail.com'
);

INSERT INTO Pembeli VALUES(
	22100007,
    'Melinda Putri',
    'Jln. Kebon Jeruk no 1, Bandung',
    '123928272',
    'melinda@gmail.com'
);

INSERT INTO Pembeli VALUES(
	22100008,
    'Jovi Ferdinand',
    'Jln. Merdeka no 67, Samarinda',
    '7778129065',
    'jovi@gmail.com'
);

INSERT INTO Pembeli VALUES(
	22100009,
    'Fernando Wijaya',
    'Jln. Kebun Sari no 44, Surabaya',
    '2592443600',
    'fernando@gmail.com'
);

INSERT INTO Pembeli VALUES(
	22100010,
    'Joenathan Willson',
    'Jln. Buah Batu no 39, Surabaya',
    '8084252700',
    'fernando@gmail.com'
);

INSERT INTO Pembeli VALUES(
	22100011,
    'Michelle Angeline',
    'Jln. Karang Anyar no 44, Jakarta',
    '888918273',
    'michelle@gmail.com'
);

INSERT INTO Pembeli VALUES(
	22100012,
    'Aldwin Soedharjo',
    'Jln. Damai no 20, Jakarta',
    '9109098273',
    'aldwin@gmail.com'
);

INSERT INTO Pembeli VALUES(
	22100013,
    'Joy Fisca',
    'Jln. Ahmad Yani no 25, Surabaya',
    '789012343',
    'joy@gmail.com'
);

CREATE TABLE Sepatu(
	Id_Sepatu INT PRIMARY KEY NOT NULL,
    Nama_Sepatu VARCHAR(50) NOT NULL,
    Merk_Sepatu VARCHAR(50) NOT NULL,
    No_Sepatu INT NOT NULL,
    Harga_Sepatu INT NOT NULL,
    Stok INT NOT NULL,
    Tanggal_Produksi DATE NOT NULL
);

INSERT INTO Sepatu VALUES(
	21220001,
    'White Eagle',
    'Baginda',
    '45',
    '270000',
    '25',
    '2020-05-19'
);

INSERT INTO Sepatu VALUES(
	21220010,
    'Super Sonic',
    'Champion',
    '42',
    '250000',
    '10',
    '2021-11-20'
);

INSERT INTO Sepatu VALUES(
	21220019,
    'Blue Dragon',
    'Champion',
    '43',
    '450000',
    '35',
    '2022-01-05'
);

INSERT INTO Sepatu VALUES(
	21220028,
    'Red Dragon',
    'Champion',
    '42',
    '380000',
    '8',
    '2021-01-01'
);

INSERT INTO Sepatu VALUES(
	21220037,
    'Ultra Boost',
    'Adidas',
    '44',
    '1500000',
    '5',
    '2021-10-20'
);

INSERT INTO Sepatu VALUES(
	21220046,
    'Air Force',
    'Nike',
    '41',
    '1750000',
    '7',
    '2019-05-10'
);

INSERT INTO Sepatu VALUES(
	21220055,
    'UA Authentic',
    'Vans',
    '40',
    '750000',
    '3',
    '2019-10-17'
);

INSERT INTO Sepatu VALUES(
	21220064,
    'Gumsole Authentic',
    'Vans',
    '39',
    '1000000',
    '17',
    '2020-07-30'
);

INSERT INTO Sepatu VALUES(
	21220073,
    'Classic Cortez',
    'Nike',
    '43',
    '1250000',
    '10',
    '2021-11-11'
);

INSERT INTO Sepatu VALUES(
	21220082,
    'Yeezy Boost',
    'Adidas',
    '42',
    '1500000',
    '9',
    '2020-02-22'
);

INSERT INTO Sepatu VALUES(
	21220091,
    'One Star',
    'Conserve',
    '43',
    '600000',
    '20',
    '2022-01-09'
);

INSERT INTO Sepatu VALUES(
	21220100,
    'Black Eagle',
    'Baginda',
    '41',
    '480000',
    '41',
    '2021-04-18'
);

INSERT INTO Sepatu VALUES(
	21220109,
    'Run Star Hike',
    'Conserve',
    '42',
    '900000',
    '30',
    '2021-08-08'
);

CREATE TABLE Transaksi(
	No_Nota INT PRIMARY KEY NOT NULL,
    Tgl_Nota VARCHAR(50) NOT NULL,
    Id_Pembeli INT NOT NULL,
    Id_Sepatu INT NOT NULL,
    Jumlah_Sepatu INT NOT NULL,
    Total_Harga INT NOT NULL,
    Tgl_Garansi VARCHAR(50) NOT NULL,
    CONSTRAINT idbeli_fk FOREIGN KEY(`Id_Pembeli`) REFERENCES Pembeli(`Id_Pembeli`) ON DELETE CASCADE,
    CONSTRAINT idsepatu_fk FOREIGN KEY(`Id_Sepatu`) REFERENCES Sepatu(`Id_Sepatu`) ON DELETE CASCADE
);

INSERT INTO Transaksi VALUES(
	221010001,
    '2022-04-15',
    '22100001',
    '21220019',
    '1',
    '450000',
    '2022-04-26'
);

INSERT INTO Transaksi VALUES(
	221010002,
    '2022-07-02',
    '22100002',
    '21220001',
    '2',
    '540000',
    '2022-07-09'
);

INSERT INTO Transaksi VALUES(
	221010003,
    '2022-09-25',
    '22100003',
    '21220019',
    '5',
    '2250000',
    '2022-10-02'
);

INSERT INTO Transaksi VALUES(
	221010004,
    '2022-08-25',
    '22100004',
    '21220010',
    '3',
    '750000',
    '2022-09-03'
);

INSERT INTO Transaksi VALUES(
	221010005,
    '2022-09-20',
    '22100005',
    '21220028',
    '4',
    '1520000',
    '2022-09-30'
);

INSERT INTO Transaksi VALUES(
	221010006,
    '2022-08-16',
    '22100006',
    '21220037',
    '1',
    '1500000',
    '2022-08-25'
);

INSERT INTO Transaksi VALUES(
	221010007,
    '2020-08-21',
    '22100007',
    '21220046',
    '3',
    '5250000',
    '2020-08-30'
);

INSERT INTO Transaksi VALUES(
	221010008,
    '2022-10-20',
    '22100008',
    '21220055',
    '2',
    '1500000',
    '2022-10-30'
);

INSERT INTO Transaksi VALUES(
	221010009,
    '2021-04-27',
    '22100009',
    '21220100',
    '5',
    '2400000',
    '2022-05-05'
);

INSERT INTO Transaksi VALUES(
	221010010,
    '2021-07-25',
    '22100010',
    '21220082',
    '3',
    '4500000',
    '2021-08-07'
);

INSERT INTO Transaksi VALUES(
	221010011,
    '2022-03-12',
    '22100011',
    '21220109',
    '2',
    '1800000',
    '2022-03-19'
);

INSERT INTO Transaksi VALUES(
	221010012,
    '2022-09-18',
    '22100012',
    '21220091',
    '1',
    '600000',
    '2022-09-27'
);

INSERT INTO Transaksi VALUES(
	221010013,
    '2022-10-01',
    '22100013',
    '21220073',
    '6',
    '7500000',
    '2022-10-10'
);