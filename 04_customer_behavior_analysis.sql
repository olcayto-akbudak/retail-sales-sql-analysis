
WITH CustomerOrders AS (
    SELECT CustomerID, COUNT(*) AS OrderCount
    FROM Sales
    GROUP BY CustomerID
)
SELECT
    CASE WHEN OrderCount = 1 THEN 'One-Time' ELSE 'Repeat' END AS CustomerType,
    COUNT(*) AS CustomerCount
FROM CustomerOrders
GROUP BY CASE WHEN OrderCount = 1 THEN 'One-Time' ELSE 'Repeat' END;
