-- Top 10 Total transaksi cabang provinsi
SELECT
  branch_id,
  branch_name,
  provinsi,
  SUM(total_transaksi) AS total_transaksi
FROM (
  SELECT
    kf.branch_id AS branch_id,
    kc.branch_name AS branch_name,
    kc.provinsi AS provinsi,
    COUNT(*) AS total_transaksi
  FROM
    `rakamin-kf-analytics-422902.kimia_farma.kf_final_transaction` AS kf
  LEFT JOIN
    `rakamin-kf-analytics-422902.kimia_farma.kf_kantor_cabang` AS kc
  ON
    kf.branch_id = kc.branch_id
  GROUP BY
    kf.branch_id,
    kc.branch_name,
    kc.provinsi
)
GROUP BY
  branch_id,
  branch_name,
  provinsi
ORDER BY
  total_transaksi DESC
LIMIT
  10;

-- Top 10 Nett sales cabang provinsi
SELECT
  branch_id,
  branch_name,
  provinsi,
  SUM(nett_sales) AS total_nett_sales
FROM (
  SELECT
    kf.branch_id AS branch_id,
    kc.branch_name AS branch_name,
    kc.provinsi AS provinsi,
    SUM(COALESCE(kf.price * (1 - kf.discount_percentage / 100), kf.price)) AS nett_sales
  FROM
    `rakamin-kf-analytics-422902.kimia_farma.kf_final_transaction` AS kf
  LEFT JOIN
    `rakamin-kf-analytics-422902.kimia_farma.kf_kantor_cabang` AS kc
  ON
    kf.branch_id = kc.branch_id
  GROUP BY
    kf.branch_id,
    kc.branch_name,
    kc.provinsi
)
GROUP BY
  branch_id,
  branch_name,
  provinsi
ORDER BY
  total_nett_sales DESC
LIMIT
  10;

-- Perbandingan Pendapatan Kimia Farma pertahun
SELECT
  EXTRACT(YEAR FROM date) AS tahun,
  SUM(COALESCE(price * (1 - discount_percentage / 100), price)) AS total_pendapatan
FROM
  `rakamin-kf-analytics-422902.kimia_farma.kf_final_transaction`
GROUP BY
  tahun
ORDER BY
  tahun;

-- Pendapatan nett_profit tiap provinsi
SELECT
  k.provinsi,
  SUM(
    ROUND(
      (
        CASE
          WHEN f.discount_percentage IS NULL THEN f.price
          ELSE f.price - (f.price * f.discount_percentage)
        END
        * (
          CASE
            WHEN f.price <= 50000 THEN 0.10
            WHEN f.price <= 100000 THEN 0.15
            WHEN f.price <= 300000 THEN 0.20
            WHEN f.price <= 500000 THEN 0.25
            ELSE 0.30
          END
        )
      ), 2
    )
  ) AS total_net_profit
FROM
  `rakamin-kf-analytics-422902.kimia_farma.kf_final_transaction` AS f
LEFT JOIN
  `rakamin-kf-analytics-422902.kimia_farma.kf_kantor_cabang` AS k
ON
  f.branch_id = k.branch_id
GROUP BY
  k.provinsi
ORDER BY
  total_net_profit DESC;

WITH branch_ratings AS (
  SELECT
    k.provinsi,
    AVG(k.rating) AS avg_branch_rating,
    AVG(t.rating) AS avg_transaction_rating
  FROM
    `rakamin-kf-analytics-422902.kimia_farma.kf_kantor_cabang` AS k
  LEFT JOIN
    `rakamin-kf-analytics-422902.kimia_farma.kf_final_transaction` AS t
  ON
    k.branch_id = t.branch_id
  GROUP BY
    k.provinsi
),
ranked_provinces AS (
  SELECT
    provinsi,
    avg_branch_rating,
    avg_transaction_rating,
    ROW_NUMBER() OVER (ORDER BY avg_branch_rating DESC, avg_transaction_rating ASC) AS rank
  FROM
    branch_ratings
)
SELECT
  provinsi,
  avg_branch_rating,
  avg_transaction_rating
FROM
  ranked_provinces
WHERE
  rank <= 5;