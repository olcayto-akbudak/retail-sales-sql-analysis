
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName NVARCHAR(100),
    Gender CHAR(1),
    BirthDate DATE,
    City NVARCHAR(50),
    SignupDate DATE
);

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName NVARCHAR(100),
    Category NVARCHAR(50),
    UnitPrice DECIMAL(10,2),
    Cost DECIMAL(10,2)
);

CREATE TABLE Stores (
    StoreID INT PRIMARY KEY,
    StoreName NVARCHAR(100),
    City NVARCHAR(50)
);

CREATE TABLE Sales (
    SaleID INT PRIMARY KEY,
    CustomerID INT,
    ProductID INT,
    StoreID INT,
    SaleDate DATE,
    Quantity INT,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID),
    FOREIGN KEY (StoreID) REFERENCES Stores(StoreID)
);
