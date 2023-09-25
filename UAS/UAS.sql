CREATE DATABASE data_universitas_binus;
USE data_universitas_binus;
-- DROP DATABASE data_universitas_binus;-- 

CREATE TABLE mahasiswa(
	id_mahasiswa VARCHAR(50) PRIMARY KEY NOT NULL,
    nama_mahasiswa VARCHAR(55) NOT NULL,
    alamat_mahasiswa VARCHAR(100) NOT NULL,
    kota VARCHAR(45) NOT NULL,
    tgl_lahir DATE NOT NULL,
    usia INT NOT NULL,
    no_kontak VARCHAR(15) NOT NULL,
    email VARCHAR(50) NOT NULL,
    jurusan VARCHAR(50) NOT NULL,
    nama_wali VARCHAR(50) NOT NULL,
    tgl_terdaftar DATE NOT NULL,
    prestasi_1 VARCHAR(50),
    prestasi_2 VARCHAR(50)
);

INSERT INTO mahasiswa VALUES
	('2501123456' , 'Asep Maulana', 'Jl. Belitung no. 53', 'Bandung', '2003-03-15', 19, '08382256373', 'asep@gbinus.ac.id', 'IT', 'Josep Maulana', '2021-09-13', 'juara 1 lomba hackathon', NULL),
    ('2301862696' , 'Marya Aulia', 'Jl. Sukaluyu no. 15', 'Bandung', '2001-04-30', 21, '081384037069', 'marya@gbinus.ac.id', 'DKV', 'Vina Muliani', '2019-09-10', NULL, NULL),
    ('2401985645' , 'Deri Sanusi', 'Jl. Kalidam no. 25', 'Cimahi', '2002-06-05', 20, '08572746511', 'deri@gbinus.ac.id', 'DI', 'Sito Sanusi', '2020-09-07', 'juara 1 lomba desain ruang', 'juara 2 3D design'),
	
    ('2502003674' , 'Ang Wilson Alexander', 'Jl. Saritem no. 1', 'Bandung', '2003-10-30', 19, '081520328391', 'wilson@gbinus.ac.id', 'IT', 'Ang Chandra', '2021-02-07', NULL, NULL),
    ('2402022020' , 'Gojou Alex', 'Jl. Kebon Jati no. 10', 'Bandung', '2002-01-01', 21, '081919827428', 'alex@gbinus.ac.id', 'DKV', 'Gojou Sato', '2020-09-10', 'juara 1 lomba mewarnai', NULL),
	('2302003788' , 'Megumi Mel', 'Jl. Mangga Sari no. 45', 'Cimahi', '2003-10-17', 19, '081621339111', 'mel@gbinus.ac.id', 'IT', 'Megumi Tako', '2020-11-20', 'juara 1 lomba koding', 'juara 1 lomba matematika'),
    ('2202003737' , 'Martinez Messi', 'Jl. Pajajaran no. 10', 'Bandung', '2000-09-09', 22, '081919191991', 'messi@gbinus.ac.id', 'DI', 'Martinez Jr', '2018-09-09', NULL, NULL),
    ('2502009090' , 'Joy D Fisca', 'Jl. Klenteng no. 9', 'Bandung', '2003-09-21', 19, '081021920318', 'joy@gbinus.ac.id', 'IT', 'Gol D Fisca', '2020-06-06', NULL, NULL),
    ('2424901020' , 'Zoldyck Gerald', 'Jl. Pasirkaliki no. 2', 'Bandung', '2003-04-17', 19, '08343536373', 'gerald@gbinus.ac.id', 'DKV', 'Zoldyck Nelson', '2020-09-17', NULL, NULL),
    ('2401010101' , 'Joenthan Willson', 'Jl. Anggur no. 19', 'Cimahi', '2002-02-14', 19, '082917361321', 'joenathan@gbinus.ac.id', 'DI', 'Joenathan', '2019-11-11', NULL, NULL),
    ('2502036748' , 'Mecel Enjel', 'Jl. Pagarsih no. 25', 'Bandung', '2003-02-26', 19, '089090909090', 'mecel@gbinus.ac.id', 'IT', 'Gunawan Enjel', '2020-10-30', NULL, NULL);
    
CREATE TABLE mata_kuliah(
	id_mata_kuliah VARCHAR(50) PRIMARY KEY NOT NULL,
    nama_mata_kuliah VARCHAR(50) NOT NULL,
    jurusan VARCHAR(50) NOT NULL,
    kelas VARCHAR(7) NOT NULL,
    tahun_ajaran INT NOT NULL,
    semester INT NOT NULL,
    jenis VARCHAR(5) NOT NULL,
    kode_dosen VARCHAR(10) NOT NULL,
    nama_dosen VARCHAR(50) NOT NULL,
    kuota_maks INT NOT NULL,
    kuota_tersisa INT NOT NULL,
    model_perkuliahan VARCHAR(10) NOT NULL,
    status_ VARCHAR(10) NOT NULL,
    durasi INT NOT NULL,
    maks_sks INT NOT NULL
);

INSERT INTO mata_kuliah VALUES
	('COMP45434', 'Algorithm and Programming', 'IT', 'LA65', 2022, 1, 'LEC', 'D9000', 'Maria Auleria', 50, 32, 'Online', 'tersedia', 120, 2),
    ('COMP684701', 'Database Technology', 'IT', 'BA75', 2022, 3, 'LAB', 'D6764', 'Vito Hafizh', 25, 25, 'Onsite', 'penuh', 90, 2),
    ('ARTS602203', 'Photography', 'DKV', 'BG90', 2022, 5, 'LAB', 'D1472', 'Krisna Ahmad', 25, 15, 'Onsite', 'tersedia', 90, 1),
    ('DSGN66960', '3-Dimension Layout', 'DI', 'LF45', 2022, 5, 'LEC', 'D6076', 'Anisa Putri', 45, 27, 'Online', 'tersedia', 120, 2),
    ('COMP684702', 'Database Technology', 'IT', 'BB75', 2022, 3, 'LAB', 'D274', 'Husni Iskandar Pohan', 26, 20, 'Onsite', 'tersedia', 90, 1),
    
    ('COMP101010', 'Computanional Physics', 'IT', 'LA75', 2022, 3, 'LEC', 'D1212', 'Dany Eka Saputra', 50, 10, 'Online', 'tersedia', 90, 1),
	('COMP101011', 'Computanional Physics', 'IT', 'BB75', 2022, 3, 'LAB', 'D1212', 'Dany Eka Saputra', 50, 10, 'Onsite', 'tersedia', 90, 2),
    ('DSGN565656', 'Interior Design and Tehnology', 'DI', 'BK90', 2022, 5, 'LAB', 'D1829', 'Mellisa', 30, 0, 'Onsite', 'penuh', 120, 2),
    ('DSGN6198008', 'Furniture Design II: Retail', 'DI', 'BG75', 2022, 3, 'LEC', 'D1919', 'Nurhadi', 45, 10, 'Onsite', 'tersedia', 90, 1),
    ('ARTS909090', '3D Art and Interaction', 'DKV', 'BK90', 2022, 3, 'LAB', 'D1829', 'Layla Miya', 45, 4, 'Onsite', 'tersedia', 90, 2),
    ('ARTS183139', 'Design and Digital Media', 'DKV', 'QW75', 2022, 5, 'LAB', 'D1010', 'Beatrix kwan', 50, 10, 'Online', 'tersedia', 90, 1),
    ('ARTS183813', 'Illustration Design', 'DKV', 'LK90', 2022, 3, 'LAB', 'D8192', 'Elizabeth Nami', 40, 0, 'Onsite', 'Penuh', 90, 1),
	('COMP183923', 'Discrete Mathematics', 'IT', 'LB75', 2022, 1, 'LEC', 'D2783', 'Zoro Nico', 50, 25, 'Online', 'tersedia', 90, 1);

CREATE TABLE transaksi(
	id_transaksi INT PRIMARY KEY NOT NULL,
    id_mahasiswa VARCHAR(50) NOT NULL,
    id_mata_kuliah VARCHAR(50) NOT NULL,
    jurusan VARCHAR(50) NOT NULL,
    timestamp_transaksi TIMESTAMP NOT NULL,
    jumlah_sks INT NOT NULL,
    total_biaya INT NOT NULL,
    virtual_account VARCHAR(50) NOT NULL,
    status_pembayaran VARCHAR(20) NOT NULL,
    jatuh_tempo DATE NOT NULL,
    potongan_biaya VARCHAR(10)
--    CONSTRAINT idmahasiswa_fk FOREIGN KEY(`id_mahasiswa`) REFERENCES mahasiswa(`id_mahasiswa`) ON DELETE CASCADE,
--    CONSTRAINT idmatakuliah_fk FOREIGN KEY(`id_mata_kuliah`) REFERENCES mata_kuliah(`id_mata_kuliah`) ON DELETE CASCADE
);

INSERT INTO transaksi VALUES
	(15060001, '2401985645', 'DSGN66960', 'DI', '2022-12-24 07:00:00', 2, '500000', '7623523425', 'belum lunas', '2023-01-15', NULL),
    (15060002, '2501123456', 'COMP684702', 'IT', '2022-12-27 22:00:00', 1, '250000', '7623878979', 'lunas', '2023-01-16', '10%'),
    (15060003, '2301862696', 'ARTS602203', 'DKV', '2022-12-30 01:00:00', 1, '250000', '7623974678', 'lunas', '2023-01-15', NULL),
    
    (15060004, '2502003674', 'COMP101010', 'IT', '2022-12-31 17:00:00', 1, '250000', '7628781932', 'lunas', '2023-01-15', NULL),
    (15060005, '2402022020', 'ARTS909090', 'DKV', '2022-01-01 12:00:00', 2, '500000', '7683482938', 'belum lunas', '2023-01-16', NULL),
    (15060006, '2302003788', 'COMP101011', 'IT', '2022-01-01 20:00:00', 2, '500000', '7629381301', 'lunas', '2023-01-16', NULL),
    (15060007, '2202003737', 'DSGN565656', 'DI', '2022-01-02 07:00:00', 2, '500000', '768291923', 'lunas', '2023-01-15', NULL),
    (15060008, '2502009090', 'COMP183923', 'IT', '2022-01-02 15:00:00', 1, '250000', '762839183', 'lunas', '2023-01-16', NULL),
    (15060009, '2424901020', 'ARTS183813', 'DKV', '2022-01-03 17:00:00', 1, '250000', '768122712', 'lunas', '2023-01-16', NULL),
    (15060010, '2401010101', 'DSGN6198008', 'DI', '2022-01-04 20:00:00', 1, '250000', '762834728', 'belum lunas', '2023-01-16', NULL),
    (15060011, '2502036748', 'COMP45434', 'IT', '2022-01-05 15:00:00', 2, '500000', '7689138292', 'lunas', '2023-01-15', '10%');
    
-- nomor 4    
CREATE TABLE pegawai(
	id_pegawai INT PRIMARY KEY NOT NULL,
    nama_pegawai varchar(50) NOT NULL,
    pemberi_laporan_kepada INT NOT NULL
);

INSERT INTO pegawai VALUES
	(100, 'Erling Haland', 2000),
    (101, 'Kylian Mbappe', 2000),
    (102, 'Alexander Santos', 2005),
    (103, 'Gon Freech', 2000),
    (104, 'Tomy Hermawan', 2005);