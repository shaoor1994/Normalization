CREATE TABLE DenormalizedOrderDetails
 ( 
  OrderID INT,
   CustomerName VARCHAR(255), 
 Email VARCHAR(255), 
 OrderDate DATE, 
 ProductID INT,
  ProductName VARCHAR(255),
   Description TEXT, Price DECIMAL(10, 2), 
   Quantity INT -- Additional fields as needed ); -- Populate DenormalizedOrderDetails with data from normalized tables 
   
   INSERT INTO DenormalizedOrderDetails 
   (OrderID,
    CustomerName, 
    Email, 
    OrderDate, 
    ProductID, 
    ProductName, 
    Description, 
    Price, Quantity) 
    SELECT
     O.OrderID,
      C.CustomerName, 
      C.Email, 
      O.OrderDate,
       OD.ProductID,
        P.ProductName,
         P.Description,
          P.Price, 
          OD.Quantity 
          FROM OrderDetails OD JOIN Order O ON OD.OrderID = O.OrderID JOIN Product P ON OD.ProductID = P.ProductID JOIN Customer C ON O.CustomerID = C.CustomerID; 