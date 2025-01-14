SELECT month, (month + 2) / 3 AS res FROM quarterof;

или

SELECT month,
  CASE
    WHEN month BETWEEN 1 and 3 THEN 1
    WHEN month BETWEEN 4 and 6 THEN 2
    WHEN month BETWEEN 7 and 9 THEN 3
    WHEN month BETWEEN 10 and 12 THEN 4
    END AS res
FROM
  quarterof
WHERE  month BETWEEN 1 and 12
