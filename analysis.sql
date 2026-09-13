SELECT
    SUM(amount) AS total_spending
FROM expenses;

SELECT
    category,
    SUM(amount) AS total_spending
FROM expenses
GROUP BY category
ORDER BY total_spending DESC;

SELECT
    payment_method,
    COUNT(*) AS transactions,
    SUM(amount) AS total_amount
FROM expenses
GROUP BY payment_method
ORDER BY total_amount DESC;

SELECT
    *
FROM expenses
ORDER BY amount DESC
LIMIT 1;

SELECT
    AVG(amount) AS average_expense

  SELECT
    category,
    SUM(amount) AS total_spending,
    ROUND(
        SUM(amount) * 100.0 /
        (SELECT SUM(amount) FROM expenses),
        2
    ) AS percentage
FROM expenses
GROUP BY category
ORDER BY percentage DESC;


FROM expenses;

output

 total_spending
----------------
 3930.00

category       | total_spending
---------------+---------------
Shopping       | 1900.00
Food           | 1200.00
Entertainment  | 500.00
Travel         | 330.00

payment_method | transactions | total_amount
---------------+--------------+-------------
UPI            | 4            | 2250.00
CARD           | 3            | 1270.00
CASH           | 3            | 410.00

expense_date | daily_spending
-------------+---------------
2026-09-01   | 330.00
2026-09-02   | 1520.00
2026-09-03   | 650.00
2026-09-04   | 880.00
2026-09-05   | 550.00

category  | amount | description
----------+--------+------------
Shopping  | 1200   | Clothes

