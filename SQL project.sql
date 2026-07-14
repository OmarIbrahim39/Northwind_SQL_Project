use Northwind

SELECT 
    c.CategoryName,
    COUNT(p.ProductID) AS num_products
FROM Categories c
JOIN Products p ON p.CategoryID = c.CategoryID
GROUP BY c.CategoryName
ORDER BY num_products DESC;


SELECT 
    c.CategoryName,
    AVG(p.UnitPrice) AS avg_price
FROM Categories c
JOIN Products p ON p.CategoryID = c.CategoryID
GROUP BY c.CategoryName
ORDER BY avg_price DESC;



SELECT 
    Country,
    COUNT(SupplierID) AS num_suppliers
FROM Suppliers
GROUP BY Country
ORDER BY num_suppliers DESC;


SELECT 
    Country,
    COUNT(CustomerID) AS num_customers
FROM Customers
GROUP BY Country
ORDER BY num_customers DESC;


SELECT 
    City,
    Country,
    COUNT(EmployeeID) AS num_employees
FROM Employees
GROUP BY City, Country
ORDER BY num_employees DESC;


SELECT 
    ProductName,
    UnitsInStock,
    UnitsOnOrder
FROM Products
WHERE UnitsInStock < 10
ORDER BY UnitsInStock ASC;


SELECT 
    s.CompanyName,
    s.Country,
    COUNT(p.ProductID) AS num_products
FROM Suppliers s
JOIN Products p ON p.SupplierID = s.SupplierID
GROUP BY s.CompanyName, s.Country
ORDER BY num_products DESC;


SELECT 
    c.CategoryName,
    SUM(p.UnitsInStock * p.UnitPrice) AS total_inventory_value
FROM Categories c
JOIN Products p ON p.CategoryID = c.CategoryID
GROUP BY c.CategoryName
ORDER BY total_inventory_value DESC;

SELECT 
    e.FirstName,
    e.LastName,
    COUNT(et.TerritoryID) AS num_territories
FROM Employees e
JOIN EmployeeTerritories et ON et.EmployeeID = e.EmployeeID
GROUP BY e.FirstName, e.LastName
ORDER BY num_territories DESC;


SELECT TOP 10 
    City, Country, COUNT(CustomerID) AS num_customers
FROM Customers
GROUP BY City, Country
ORDER BY num_customers DESC;

SELECT 
    ContactTitle,
    COUNT(CustomerID) AS num_customers
FROM Customers
WHERE ContactTitle IS NOT NULL
GROUP BY ContactTitle
ORDER BY num_customers DESC;


SELECT 
    s.CompanyName,
    AVG(p.UnitPrice) AS avg_price,
    MAX(p.UnitPrice) AS max_price
FROM Suppliers s
JOIN Products p ON p.SupplierID = s.SupplierID
GROUP BY s.CompanyName
ORDER BY avg_price DESC;


SELECT 
    r.RegionDescription,
    COUNT(t.TerritoryID) AS num_territories
FROM Region r
JOIN Territories t ON t.RegionID = r.RegionID
GROUP BY r.RegionDescription
ORDER BY num_territories DESC;


SELECT 
    p.ProductName,
    c.CategoryName,
    p.UnitPrice
FROM Products p
JOIN Categories c ON c.CategoryID = p.CategoryID
WHERE p.UnitPrice > (
    SELECT AVG(p2.UnitPrice) 
    FROM Products p2 
    WHERE p2.CategoryID = p.CategoryID
)
ORDER BY p.UnitPrice DESC;

SELECT 
    s.CompanyName,
    COUNT(p.ProductID) AS num_products
FROM Suppliers s
JOIN Products p ON p.SupplierID = s.SupplierID
GROUP BY s.CompanyName
HAVING COUNT(p.ProductID) > 2
ORDER BY num_products DESC;

SELECT 
    Region,
    COUNT(CustomerID) AS num_customers
FROM Customers
WHERE Region IS NOT NULL
GROUP BY Region
ORDER BY num_customers DESC;
