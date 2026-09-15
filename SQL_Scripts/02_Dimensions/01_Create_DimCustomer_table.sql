USE RetailDW;
GO 

-- Here customerKey is surrogate key generate by DW
CREATE TABLE DimCustomer(
	CustomerKey INT IDENTITY(1,1) PRIMARY KEY, 
	CustomerID VARCHAR(50) NOT NULL UNIQUE, 
	CustomerName VARCHAR(100) NOT NULL,
	Email VARCHAR(150) NULL, 
	City VARCHAR(100) NULL, 
	State VARCHAR(100) NULL, 
	CreatedDate DATETIME2 NOT NULL DEFAULT GETDATE(), 
	ModifiedDate DATETIME2 NOT NULL DEFAULT GETDATE()
);