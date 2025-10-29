-- Menampilkan 5 cabang dengan rating tertinggi tapi rating transaksi terendah
SELECT
  branch_name,
  ROUND(AVG(rating_cabang), 2) AS avg_rating_cabang,
  ROUND(AVG(rating_transaksi), 2) AS avg_rating_transaksi
FROM
  `kimia_farma.kf_analisa`
GROUP BY
  branch_name
ORDER BY
  avg_rating_cabang DESC, avg_rating_transaksi ASC
LIMIT 5;
