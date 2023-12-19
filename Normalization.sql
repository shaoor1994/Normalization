CREATE TABLE [Customer] (
  [CustomerID] int PRIMARY KEY,
  [CustomerName] nvarchar(255),
  [Email] nvarchar(255)
)
GO

CREATE TABLE [Product] (
  [ProductID] int PRIMARY KEY,
  [ProductName] nvarchar(255),
  [Description] text,
  [Price] decimal
)
GO

CREATE TABLE [Order] (
  [OrderID] int PRIMARY KEY,
  [CustomerID] int,
  [OrderDate] date
)
GO

CREATE TABLE [OrderDetails] (
  [OrderDetailID] int PRIMARY KEY,
  [OrderID] int,
  [ProductID] int,
  [Quantity] int
)
GO

ALTER TABLE [Order] ADD FOREIGN KEY ([CustomerID]) REFERENCES [Customer] ([CustomerID])
GO

ALTER TABLE [OrderDetails] ADD FOREIGN KEY ([OrderID]) REFERENCES [Order] ([OrderID])
GO

ALTER TABLE [OrderDetails] ADD FOREIGN KEY ([ProductID]) REFERENCES [Product] ([ProductID])
GO
