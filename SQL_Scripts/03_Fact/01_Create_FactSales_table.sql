USE RetailDW;

GO 

CREATE TABLE FactSales(
	SalesKey INT IDENTITY(1,1) PRIMARY KEY, 
	SaleID INT NOT NULL UNIQUE, 
	SaleDate DATE NOT NULL, 
	CustomerKey INT NOT NULL, 
	ProductKey INT NOT NULL, 
	StoreKey INT NOT NULL, 
	Quantity INT NOT NULL, 
	UnitPrice DECIMAL(18,2) NOT NULL, 
	TotalAmount DECIMAL(18,2) NOT NULL, 
	LoadDate DATETIME2 NOT NULL DEFAULT GETDATE(),

	CONSTRAINT FK_FactSales_DimCustomer FOREIGN KEY (CustomerKey) REFERENCES DimCustomer(CustomerKey), 
	CONSTRAINT FK_FactSales_DimProduct FOREIGN KEY (ProductKey) REFERENCES DimProduct(ProductKey),

	CONSTRAINT FK_FactSales_DimStore FOREIGN KEY (StoreKey) REFERENCES DimStore(StoreKey)
);