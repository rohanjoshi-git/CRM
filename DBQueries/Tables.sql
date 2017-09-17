CREATE TABLE Customer 
(
Id          INT PRIMARY KEY IDENTITY(1,1),
FirstName   VARCHAR(100),
LastName    VARCHAR(100),
City        VARCHAR(100),
Country     VARCHAR(100),
Phone       VARCHAR(100)
)
GO

CREATE TABLE "Order"
(
   Id                   INT PRIMARY KEY IDENTITY(1,1),
   OrderDate            DATETIME             NOT NULL DEFAULT GETDATE(),
   OrderNumber          VARCHAR(10)          NULL,
   CustomerId           INT                  NOT NULL,
   TotalAmount          DECIMAL(12,2)        NULL DEFAULT 0
)
GO

CREATE TABLE OrderItem (
   Id                   INT  PRIMARY KEY  IDENTITY(1,1),
   OrderId              INT                  NOT NULL,
   ProductId            INT                  NOT NULL,
   UnitPrice            DECIMAL(12,2)        NOT NULL DEFAULT 0,
   Quantity             INT                  NOT NULL DEFAULT 1,
)
GO

CREATE TABLE Product (
   Id                   INT   PRIMARY KEY  IDENTITY(1,1),
   ProductName          VARCHAR(50)         NOT NULL,
   SupplierId           INT                  NOT NULL,
   UnitPrice            DECIMAL(12,2)        NULL DEFAULT 0,
   Package              VARCHAR(30)         NULL,
   IsDiscontinued       BIT                  NOT NULL DEFAULT 0
)
GO

CREATE TABLE Supplier (
   Id                   INT  PRIMARY KEY  IDENTITY(1,1),
   CompanyName          VARCHAR(40)         NOT NULL,
   ContactName          VARCHAR(50)         NULL,
   ContactTitle         VARCHAR(40)         NULL,
   City                 VARCHAR(40)         NULL,
   Country              VARCHAR(40)         NULL,
   Phone                VARCHAR(30)         NULL,
   Fax                  VARCHAR(30)         NULL
)
GO

ALTER TABLE "Order"
ADD CONSTRAINT FK_ORDER_REFERENCE_CUSTOMER 
FOREIGN KEY (CustomerId) REFERENCES Customer (Id)
GO

ALTER TABLE OrderItem
   ADD CONSTRAINT FK_ORDERITEM_REFERENCE_ORDER FOREIGN KEY (OrderId)
      REFERENCES "Order" (Id)
GO

ALTER TABLE OrderItem
   ADD CONSTRAINT FK_ORDERITEM_REFERENCE_PRODUCT FOREIGN KEY (ProductId)
      REFERENCES Product (Id)
GO

ALTER TABLE Product
   ADD CONSTRAINT FK_PRODUCT_REFERENCE_SUPPLIER FOREIGN KEY (SupplierId)
      REFERENCES Supplier (Id)
GO



sp_Helpindex "Order"

sp_Helptext SP_GetAllOrders


CREATE TABLE [dbo].[ErrorLog](
	[ErrorID] [int] PRIMARY KEY IDENTITY(1,1) NOT NULL,
	[ErrorNumber] [int] NULL,
	[ErrorSeverity] [varchar](4000) NULL,
	[ErrorState] [varchar](4000) NULL,
	[ErrorProcedure] [varchar](4000) NULL,
	[ErrorLine] [int] NULL,
	[ErrorMessage] [varchar](4000) NULL,
	[CreatedDate] [datetime] NULL)