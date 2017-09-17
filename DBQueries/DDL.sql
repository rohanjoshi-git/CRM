CREATE TABLE tblCustomer 
(
Id          INT PRIMARY KEY IDENTITY(1,1),
FirstName   VARCHAR(100) NOT NULL,
LastName    VARCHAR(100) NOT NULL,
City        VARCHAR(100) NOT NULL,
Country     VARCHAR(100) NOT NULL,
Phone       VARCHAR(100) NOT NULL,
CreatedDate DATETIME NOT NULL DEFAULT SYSDATETIME()
)
GO

CREATE TABLE tblOrder
(
   Id                   INT PRIMARY KEY IDENTITY(1,1),
   OrderDate            DATETIME             NOT NULL DEFAULT GETDATE(),
   OrderNumber          VARCHAR(10)          NULL,
   CustomerId           INT                  NOT NULL,
   TotalAmount          DECIMAL(12,2)        NULL DEFAULT 0,
   CreatedDate DATETIME NOT NULL DEFAULT SYSDATETIME()
)
GO

CREATE TABLE tblOrderItem (
   Id                   INT  PRIMARY KEY  IDENTITY(1,1),
   OrderId              INT                  NOT NULL,
   ProductId            INT                  NOT NULL,
   UnitPrice            DECIMAL(12,2)        NOT NULL DEFAULT 0,
   Quantity             INT                  NOT NULL DEFAULT 1,
   CreatedDate DATETIME NOT NULL DEFAULT SYSDATETIME()
)
GO

CREATE TABLE tblProduct (
   Id                   INT   PRIMARY KEY  IDENTITY(1,1),
   ProductName          VARCHAR(50)         NOT NULL,
   SupplierId           INT                  NOT NULL,
   UnitPrice            DECIMAL(12,2)        NULL DEFAULT 0,
   Package              VARCHAR(30)         NULL,
   IsDiscontinued       BIT                  NOT NULL DEFAULT 0,
   CreatedDate DATETIME NOT NULL DEFAULT SYSDATETIME()
)
GO

CREATE TABLE tblSupplier (
   Id                   INT  PRIMARY KEY  IDENTITY(1,1),
   CompanyName          VARCHAR(40)         NOT NULL,
   ContactName          VARCHAR(50)         NOT NULL,
   ContactTitle         VARCHAR(40)         NULL,
   City                 VARCHAR(40)         NULL,
   Country              VARCHAR(40)         NULL,
   Phone                VARCHAR(30)         NOT NULL,
   Fax                  VARCHAR(30)         NULL,
   CreatedDate DATETIME NOT NULL DEFAULT SYSDATETIME()
)
GO

CREATE TABLE tblErrorLog
(
	[ErrorID] [int] PRIMARY KEY IDENTITY(1,1) NOT NULL,
	[ErrorNumber] [int] NULL,
	--[ErrorSeverity] [varchar](4000) NULL,
	--[ErrorState] [varchar](4000) NULL,
	[ErrorProcedure] [varchar](4000) NULL,
	[ErrorLine] [int] NULL,
	[ErrorMessage] [varchar](4000) NULL,
	[CreatedDate] DATETIME NOT NULL DEFAULT SYSDATETIME()
)
GO

ALTER TABLE tblOrder
ADD CONSTRAINT FK_ORDER_REFERENCE_CUSTOMER 
FOREIGN KEY (CustomerId) REFERENCES tblCustomer (Id)
GO

ALTER TABLE tblOrderItem
   ADD CONSTRAINT FK_ORDERITEM_REFERENCE_ORDER FOREIGN KEY (OrderId)
      REFERENCES tblOrder (Id)
GO

ALTER TABLE tblOrderItem
   ADD CONSTRAINT FK_ORDERITEM_REFERENCE_PRODUCT FOREIGN KEY (ProductId)
      REFERENCES tblProduct (Id)
GO

ALTER TABLE tblProduct
   ADD CONSTRAINT FK_PRODUCT_REFERENCE_SUPPLIER FOREIGN KEY (SupplierId)
      REFERENCES tblSupplier (Id)
GO

CREATE INDEX IX_tblCustomer_FirstName ON tblCustomer (FirstName)