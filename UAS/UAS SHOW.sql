-- where and or
SELECT * FROM transaksi
WHERE status_pembayaran = 'belum lunas' AND potongan_biaya = NULL OR total_biaya < '500000';

SELECT * FROM mata_kuliah
WHERE status_ = 'penuh' AND  durasi = '90' OR semester < '3';

-- where not like
SELECT * FROM transaksi
WHERE id_mata_kuliah NOT LIKE 'a%';

SELECT * FROM mahasiswa
WHERE nama_mahasiswa NOT LIKE 'a%';

-- where like in
SELECT * FROM mahasiswa
WHERE nama_mahasiswa LIKE 'a%' AND jurusan IN('IT');

SELECT * FROM mata_kuliah
WHERE nama_mata_kuliah LIKE 'd%' AND model_perkuliahan IN('Onsite');

-- where not or in
SELECT * FROM transaksi
WHERE NOT jumlah_sks = '2' OR jurusan IN('IT');

SELECT * FROM mata_kuliah
WHERE NOT maks_sks = '1' OR jurusan IN('DKV');

-- inner join
SELECT
	m.id_mahasiswa,
    nama_mahasiswa,
    m.jurusan,
    jumlah_sks,
    total_biaya,
    status_pembayaran,
    potongan_biaya
    FROM mahasiswa m
    INNER JOIN transaksi t
    ON t.id_mahasiswa = m.id_mahasiswa;

-- left join
SELECT
	mk.id_mata_kuliah,
    nama_mata_kuliah,
    maks_sks,
    total_biaya,
    jatuh_tempo,
    nama_dosen
    FROM mata_kuliah mk
    LEFT JOIN transaksi t
    ON mk.id_mata_kuliah = t.id_mata_kuliah;

-- right join
SELECT
	mk.id_mata_kuliah,
    nama_mata_kuliah,
    mk.jurusan,
    semester,
    potongan_biaya,
    status_pembayaran
    total_biaya
    FROM mata_kuliah mk
    RIGHT JOIN transaksi t
    ON mk.id_mata_kuliah = t.id_mata_kuliah;

-- full outer join
SELECT
	m.id_mahasiswa,
    nama_mahasiswa,
    nama_wali,
    email,
    no_kontak,
    jumlah sks,
    timestamp_transaksi
    FROM mahasiswa m
    FULL OUTER JOIN transaksi t
    ON t.id_mahasiswa = m.id_mahasiswa;
    
SELECT id_mahasiswa, jurusan, jumlah_sks FROM transaksi
UNION
SELECT id_mahasiswa, jurusan, kota FROM mahasiswa;

SELECT
	m.id_mahasiswa,
    nama_mahasiswa,
    nama_wali,
    email,
    no_kontak,
    jumlah_sks,
    timestamp_transaksi
    FROM mahasiswa m
    LEFT JOIN transaksi t
    ON t.id_mahasiswa = m.id_mahasiswa
UNION
SELECT
	m.id_mahasiswa,
    nama_mahasiswa,
    nama_wali,
    email,
    no_kontak,
    jumlah_sks,
    timestamp_transaksi
    FROM mahasiswa m
    RIGHT JOIN transaksi t
    ON t.id_mahasiswa = m.id_mahasiswa;

-- self join
SELECT p.nama_pegawai AS Nama, m.id_mahasiswa AS NIM
FROM pegawai p, mahasiswa m
WHERE p.id_pegawai <> m.id_mahasiswa;

-- multiple join
SELECT
	t.id_mata_kuliah,
    t.jurusan,
    jumlah_sks,
    total_biaya,
    nama_dosen,
    nama_mata_kuliah,
	status_
    FROM transaksi t
    INNER JOIN mata_kuliah mk
    ON t.id_mata_kuliah = mk.id_mata_kuliah
    RIGHT JOIN mahasiswa m
    ON t.id_mahasiswa = m.id_mahasiswa
    ORDER BY t.id_mata_kuliah ASC;
    
-- mengubah nama 1 tabel    
RENAME TABLE mahasiswa TO siswa;
RENAME TABLE siswa TO mahasiswa;
SELECT * FROM siswa;

SELECT * FROM mahasiswa;
SELECT * FROM mata_kuliah;
SELECT * FROM transaksi;

-- mengubah tipe data
ALTER TABLE mahasiswa
MODIFY tgl_terdaftar VARCHAR(50);

-- mengubah nama dari 1 kolom
ALTER TABLE mahasiswa
CHANGE
alamat_mahasiswa alamat VARCHAR(50);

-- ALTER TABLE mahasiswa
-- CHANGE
-- alamat alamat_mahasiswa VARCHAR(50);

-- mengubah posisi 1 kolom
ALTER TABLE mata_kuliah
MODIFY
	tahun_ajaran INT AFTER nama_dosen;
    
-- menambahkan 1 kolom baru pada suatu table
ALTER TABLE transaksi
ADD metode_pembayaran VARCHAR(50)
AFTER virtual_account;

-- Menghapus 1 kolom baru tersebut dari suatu tabel
ALTER TABLE transaksi
DROP metode_pembayaran;

-- nomor 7
ALTER TABLE transaksi
	ADD CONSTRAINT idmahasiswa_fk FOREIGN KEY (id_mahasiswa) REFERENCES mahasiswa(id_mahasiswa),
    ADD CONSTRAINT idmatakuliah_fk FOREIGN KEY (id_mata_kuliah) REFERENCES mata_kuliah(id_mata_kuliah);
    
-- nomor 8
START TRANSACTION;
INSERT INTO `transaksi`(id_transaksi, id_mahasiswa, id_mata_kuliah, jurusan, timestamp_transaksi, jumlah_sks, total_biaya, virtual_account, status_pembayaran, jatuh_tempo, potongan_biaya) 
VALUES(17060012, '2502003674', 'ARTS183139', 'DKV', '2022-01-07 19:00:00', 1, 250000, '7692840282', 'belum lunas', '2023-01-15', null),
    (17060013, '2502003674', 'COMP684701', 'IT', '2022-01-08 09:00:00', 2, 500000, '768293781', 'lunas', '2023-01-16', '20%');
UPDATE `mata_kuliah` SET kuota_tersisa = kuota_tersisa - 1 WHERE id_mata_kuliah = 'ARTS183139';
UPDATE `mata_kuliah` SET kuota_tersisa = kuota_tersisa - 1 WHERE id_mata_kuliah = 'COMP684701';
COMMIT;

-- nomor 9
CREATE INDEX mahasiswaa
ON mahasiswa (nama_mahasiswa, kota, usia);

CREATE INDEX mata_kuliah2
ON mata_kuliah (nama_dosen, nama_mata_kuliah, kelas);

SHOW INDEX FROM mahasiswa;
SHOW INDEX FROM mata_kuliah;