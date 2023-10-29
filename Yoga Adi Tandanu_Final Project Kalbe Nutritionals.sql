SELECT "Marital Status", AVG(age) AS Rata_Rata_Umur
FROM case_study
GROUP BY "Marital Status";

SELECT gender, AVG(age) AS Rata_Rata_Umur
FROM case_study
GROUP BY gender;

SELECT s.StoreName, SUM(t.Qty) AS TotalQuantity
FROM "Transaction" t
JOIN "store" s ON t.StoreID = s.StoreID
GROUP BY s.StoreName
ORDER BY TotalQuantity DESC
LIMIT 1;

SELECT p."Product Name", SUM(t."totalamount") AS totalamount
FROM "Transaction" t
JOIN "product" p ON t."productid" = p."productid"
GROUP BY p."Product Name"
ORDER BY TotalAmount DESC
LIMIT 1;



