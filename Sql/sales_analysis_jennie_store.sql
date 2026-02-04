1. Membuat Database
CREATE DATABASE jennie_store;
\c jennie_store

2. Membuat Tabel Penjualan
CREATE TABLE penjualan (
    id SERIAL PRIMARY KEY,
    tanggal TIMESTAMP,
    nama_fans VARCHAR(100),
    produk VARCHAR(100),
    kategori VARCHAR(50),
    jumlah INT,
    harga NUMERIC(12,2)
);

3. Insert Data Penjualan
INSERT INTO penjualan (tanggal, nama_fans, produk, kategori, jumlah, harga) VALUES
('2025-01-05 10:00:00', 'Alisha Zaharani', 'Album Ruby JENNIE', 'Album', 20, 250000),
('2025-01-12 14:00:00', 'Mina Park', 'Lightstick JENNIE Ver. 2', 'Lightstick', 10, 600000),
('2025-01-20 16:00:00', 'Sakura Miyawaki', 'T-Shirt JENNIE Special Edition', 'T-shirt', 5, 350000),
('2025-02-03 11:00:00', 'Emily Johnson', 'Tumbler JENNIE x Stanley', 'Merch Exclusive', 15, 750000),
('2025-02-18 09:00:00', 'Lina Suksawat', 'Poster JENNIE Photocard Set', 'Poster', 10, 100000),
('2025-03-07 15:00:00', 'Nabila Rahmawati', 'T-Shirt JENNIE Special Edition', 'T-shirt', 12, 350000),
('2025-03-15 18:00:00', 'Hana Kimura', 'Poster JENNIE Photocard Set', 'Poster', 8, 100000),
('2025-04-02 13:00:00', 'Yuki Tanaka', 'Tumbler JENNIE x Stanley', 'Merch Exclusive', 25, 750000),
('2025-04-20 10:30:00', 'Chloe Williams', 'Album Ruby JENNIE', 'Album', 10, 250000),
('2025-05-10 17:50:00', 'Siti Nurhaliza', 'Lightstick JENNIE Ver. 2', 'Lightstick', 15, 600000);

4. Menampilkan Semua Data Penjualan
SELECT * FROM penjualan;

5. Total Pendapatan Setiap Bulan
SELECT
    TO_CHAR(tanggal, 'YYYY-MM') AS bulan,
    SUM(jumlah * harga) AS total_pendapatan
FROM penjualan
GROUP BY bulan
ORDER BY bulan;

6. Jumlah Unit Terjual Setiap Bulan

SELECT
    TO_CHAR(tanggal, 'YYYY-MM') AS bulan,
    SUM(jumlah) AS total_unit
FROM penjualan
GROUP BY bulan
ORDER BY bulan;

7. Rata-rata Harga Barang Terjual Setiap Bulan
SELECT
    TO_CHAR(tanggal, 'YYYY-MM') AS bulan,
    AVG(harga) AS rata_rata_harga
FROM penjualan
GROUP BY bulan
ORDER BY bulan;

8. Kategori Produk dengan Penjualan Terbanyak per Bulan
SELECT bulan, kategori, total_unit
FROM (
    SELECT
        TO_CHAR(tanggal, 'YYYY-MM') AS bulan,
        kategori,
        SUM(jumlah) AS total_unit,
        RANK() OVER (
            PARTITION BY TO_CHAR(tanggal, 'YYYY-MM')
            ORDER BY SUM(jumlah) DESC
        ) AS ranking
    FROM penjualan
    GROUP BY bulan, kategori
) AS sub
WHERE ranking = 1
ORDER BY bulan;

