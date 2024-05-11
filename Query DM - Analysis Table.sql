-- CREATE TABLE: Ini adalah pernyataan SQL untuk membuat tabel baru di basis data
-- Tabel ini akan disebut tabel_analisa dan akan dibuat di basis data rakamin-kf-analytics-422902.kimia_farma
-- WITH calculated_profits AS (...): Ini adalah bagian dari "Common Table Expressions" (CTE)
-- Ini memungkinkan kita untuk menamai dan menggunakan hasil dari subquery yang kompleks dengan cara yang lebih mudah dibaca
-- Dalam kasus ini, CTE disebut calculated_profits.
-- SELECT ... FROM ... LEFT JOIN ... ON ...: Ini adalah subquery utama yang menghasilkan data yang akan dimasukkan ke dalam tabel baru.
-- SELECT menentukan kolom-kolom yang akan dimasukkan ke dalam tabel baru.
-- FROM menentukan tabel-tabel sumber data.
-- LEFT JOIN digunakan untuk menggabungkan data dari beberapa tabel berdasarkan kunci yang cocok.
-- ON menentukan kondisi untuk menggabungkan baris dari tabel-tabel yang berbeda.
-- CASE ... END AS ...: Ini adalah ekspresi CASE yang digunakan untuk membuat kolom-kolom baru atau menghitung nilai berdasarkan kondisi tertentu.
-- ROUND(): Ini adalah fungsi yang digunakan untuk membulatkan nilai numerik.
-- AS: Ini digunakan untuk memberi alias atau menamai kolom-kolom yang dihasilkan oleh subquery

CREATE TABLE `rakamin-kf-analytics-422902.kimia_farma.tabel_analisa` AS
WITH calculated_profits AS (
  SELECT
    f.transaction_id,
    f.date,
    f.branch_id,
    k.branch_name,
    k.kota,
    k.provinsi,
    k.rating AS rating_cabang,
    f.customer_name,
    f.product_id,
    p.product_name,
    f.price AS actual_price,
    f.discount_percentage,
    ROUND (f.discount_percentage * 100) AS discount_percentage_new,
    CASE
      WHEN f.price <= 50000 THEN 0.10
      WHEN f.price <= 100000 THEN 0.15
      WHEN f.price <= 300000 THEN 0.20
      WHEN f.price <= 500000 THEN 0.25
      ELSE 0.30
    END AS persentase_gross_laba,
    CASE
      WHEN f.discount_percentage IS NULL THEN f.price
      ELSE f.price - (f.price * f.discount_percentage)
    END AS nett_sales,
    ROUND((CASE
      WHEN f.discount_percentage IS NULL THEN f.price
      ELSE ((f.price - (f.price * f.discount_percentage)) * 
        (CASE
          WHEN f.price <= 50000 THEN 0.10
          WHEN f.price <= 100000 THEN 0.15
          WHEN f.price <= 300000 THEN 0.20
          WHEN f.price <= 500000 THEN 0.25
          ELSE 0.30
        END)
      )
    END), 2) AS nett_profit,
    f.rating AS rating_transaksi
  FROM
    `rakamin-kf-analytics-422902.kimia_farma.kf_final_transaction` AS f
  LEFT JOIN
    `rakamin-kf-analytics-422902.kimia_farma.kf_product` AS p
  ON
    f.product_id = p.product_id
  LEFT JOIN
    `rakamin-kf-analytics-422902.kimia_farma.kf_kantor_cabang` AS k
  ON
    f.branch_id = k.branch_id
)
SELECT * FROM calculated_profits;
