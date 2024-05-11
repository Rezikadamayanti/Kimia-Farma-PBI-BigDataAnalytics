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