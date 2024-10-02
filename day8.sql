create database today;
use today;
create table Customers(CustomerID int , CustomerName varchar(290), Email varchar(290));
insert into Customers(CustomerID ,CustomerName , Email) value (1, 'John Doe' , 'john@example.com') , 
(2, "Jane Smith" , "jane@example.com") ,
( 3 , "Alice Johnson" , "alice@example.com") , 
( 4 , "Bob Brown" , "bob@example.com");

select Customers.* from Customers;

create table Orders(OrderID int ,CustomerID int ,OrderDate date ,TotalAmount int , ShippingDate date);
insert into Orders(OrderID  ,CustomerID  ,OrderDate , TotalAmount  , ShippingDate)
value (101 , 1  , '2023-09-01' , 150 , '2023-09-02'),
(102 , 2 , '2023-09-05' , 200 , NULL),
(103 , 1 , '2023-09-10' , 75 , '2023-09-12'),
(104 , 3 , '2023-09-15' , 100 , '2023-09-16');

select Orders.* from Orders;
SELECT COUNT(DISTINCT CustomerID) AS TotalCustomers, 
       AVG(TotalAmount) AS AverageOrderValue
FROM Orders;

CREATE TABLE Products (
    ProductID INT,
    ProductName VARCHAR(50),
    Price DECIMAL(10, 2),
    CategoryID INT
);

INSERT INTO Products (ProductID, ProductName, Price, CategoryID) 
VALUES 
(1, 'Laptop', 1000.00, 1),
(2, 'Smartphone', 500.00, 1),
(3, 'Desk Chair', 150.00, 2),
(4, 'Monitor', 300.00, 1);

select Products.* from Products;

CREATE TABLE Sales (
    SaleID INT PRIMARY KEY,
    ProductID INT,
    SaleDate DATE,
    Quantity INT
);

INSERT INTO Sales (SaleID, ProductID, SaleDate, Quantity)
VALUES 
(1, 1, '2023-09-05', 2),
(2, 2, '2023-09-07', 5),
(3, 3, '2023-09-08', 10),
(4, 4, '2023-09-10', 3);

select Sales.* from Sales;

select Products.ProductName , (Products.Price * Sales.Quantity) as totalamount 
  from Products left join Sales on Products.ProductID = Sales.ProductID;

select Products.ProductName , Sales.SaleDate as totalamount 
  from Products left join Sales on Products.ProductID = Sales.ProductID;


