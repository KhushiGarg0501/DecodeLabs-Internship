CREATE DATABASE ecommerce;
USE ecommerce;

  CREATE TABLE orders (
    OrderID VARCHAR(20),
    Date DATE,
    CustomerID VARCHAR(20),
    Product VARCHAR(100),
    Quantity INT,
    UnitPrice DECIMAL(10,2),
    ShippingAddress VARCHAR(255),
    PaymentMethod VARCHAR(50),
    OrderStatus VARCHAR(50),
    TrackingNumber VARCHAR(50),
    ItemsInCart INT,
    CouponCode VARCHAR(50),
    ReferralSource VARCHAR(50),
    TotalPrice DECIMAL(10,2)
);
 SELECT * FROM orders; 
 SELECT Product, TotalPrice
 From orders;
 
 SELECT * FROM orders
 WHERE PaymentMethod = 'Cash';
 
 SELECT * FROM orders
 ORDER BY TotalPrice DESC;
 
 SELECT COUNT(*) AS TotalOrders
 FROM orders;
 
 SELECT SUM(TotalPrice) AS Revenue
 FROM orders;
 
 SELECT PaymentMethod, 
    COUNT(*) AS TotalOrders
 FROM orders
 GROUP BY PaymentMethod;
 
 SELECT Product,
      AVG(UnitPrice) AS AveragePrice
 FROM orders
 GROUP BY Product;
 
 SELECT Product,
   SUM(Quantity) AS TotalSold
 FROM orders
 GROUP BY Product
 ORDER BY TotalSold DESC;
 
 SELECT * FROM orders
 WHERE OrderStatus = 'Returned';
 
 
