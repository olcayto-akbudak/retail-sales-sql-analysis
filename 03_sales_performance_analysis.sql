
SELECT
    YEAR(S.SaleDate) AS SalesYear,
    MONTH(S.SaleDate) AS SalesMonth,
    SUM(S.Quantity * P.UnitPrice) AS TotalRevenue,
    SUM(S.Quantity * (P.UnitPrice - P.Cost)) AS TotalProfit
FROM Sales S
JOIN Products P ON S.ProductID = P.ProductID
GROUP BY YEAR(S.SaleDate), MONTH(S.SaleDate)
ORDER BY SalesYear, SalesMonth;
