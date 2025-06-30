
CREATE DATABASE rumah_sakit;
USE rumah_sakit;

CREATE TABLE pasien (
    id_pasien INT AUTO_INCREMENT PRIMARY KEY,
    nama_pasien VARCHAR(100) NOT NULL,
    alamat VARCHAR(200),
    tanggal_lahir DATE,
    jenis_kelamin ENUM('L', 'P')
);

CREATE TABLE dokter (
    id_dokter INT AUTO_INCREMENT PRIMARY KEY,
    nama_dokter VARCHAR(100) NOT NULL,
    spesialis VARCHAR(100)
);

CREATE TABLE ruang_rawat (
    id_ruang INT AUTO_INCREMENT PRIMARY KEY,
    nama_ruang VARCHAR(100) NOT NULL,
    kelas_ruang VARCHAR(50)
);

CREATE TABLE obat (
    id_obat INT AUTO_INCREMENT PRIMARY KEY,
    nama_obat VARCHAR(100) NOT NULL,
    jenis_obat VARCHAR(50)
);

CREATE TABLE kunjungan (
    id_kunjungan INT AUTO_INCREMENT PRIMARY KEY,
    id_pasien INT,
    id_dokter INT,
    id_ruang INT,
    tanggal_kunjungan DATE,
    diagnosa VARCHAR(200),
    FOREIGN KEY (id_pasien) REFERENCES pasien(id_pasien),
    FOREIGN KEY (id_dokter) REFERENCES dokter(id_dokter),
    FOREIGN KEY (id_ruang) REFERENCES ruang_rawat(id_ruang)
);

INSERT INTO pasien (nama_pasien, alamat, tanggal_lahir, jenis_kelamin) VALUES
('Ahmad Suryana', 'Jl. Merdeka No.10', '1990-05-21', 'L'),
('Siti Aminah', 'Jl. Melati No.5', '1985-11-12', 'P'),
('Budi Santoso', 'Jl. Anggrek No.7', '2000-01-30', 'L');

INSERT INTO dokter (nama_dokter, spesialis) VALUES
('Dr. Andi Wijaya', 'Penyakit Dalam'),
('Dr. Lina Sari', 'Anak'),
('Dr. Rudi Hartono', 'Bedah');

INSERT INTO ruang_rawat (nama_ruang, kelas_ruang) VALUES
('Ruang Mawar', 'VIP'),
('Ruang Melati', 'Kelas I'),
('Ruang Anggrek', 'Kelas II');

INSERT INTO obat (nama_obat, jenis_obat) VALUES
('Paracetamol', 'Tablet'),
('Amoxicillin', 'Kapsul'),
('Salbutamol', 'Sirup');

INSERT INTO kunjungan (id_pasien, id_dokter, id_ruang, tanggal_kunjungan, diagnosa) VALUES
(1, 1, 1, '2025-06-28', 'Demam Tinggi'),
(2, 2, 2, '2025-06-29', 'Batuk Pilek'),
(3, 3, 3, '2025-06-30', 'Luka Sayat');
