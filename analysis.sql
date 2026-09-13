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
