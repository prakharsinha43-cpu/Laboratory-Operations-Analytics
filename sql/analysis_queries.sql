SELECT SUM(Revenue) AS Total_Revenue
FROM laboratory_operations;

SELECT Department,
SUM(Revenue) AS Revenue
FROM laboratory_operations
GROUP BY Department
ORDER BY Revenue DESC;

SELECT Technician,
COUNT(*) AS Tests_Completed
FROM laboratory_operations
GROUP BY Technician
ORDER BY Tests_Completed DESC;

SELECT
YEAR(Test_Date) AS Year,
MONTH(Test_Date) AS Month,
SUM(Revenue) AS Revenue
FROM laboratory_operations
GROUP BY Year, Month
ORDER BY Year, Month;