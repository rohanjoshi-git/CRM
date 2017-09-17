/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP 1000 [ErrorID]
      ,[ErrorNumber]
      ,[ErrorSeverity]
      ,[ErrorState]
      ,[ErrorProcedure]
      ,[ErrorLine]
      ,[ErrorMessage]
	  , CreatedDate
  FROM [CRM_DB].[dbo].[ErrorLog]

  SELECT C.FirstName, O.Id, COUNT(OI.Id), O.OrderNumber, O.OrderDate, SUM(OI.Quantity) Quantity, SUM(OI.UnitPrice) UnitPrice
  FROM "Order" O 
  RIGHT JOIN Customer C ON O.CustomerId = C.Id
  LEFT JOIN OrderItem OI ON O.Id = OI.OrderId
  GROUP BY C.FirstName, O.Id, O.OrderNumber, O.OrderDate

  SELECT C.FirstName, O.Id, COUNT(OI.Id), O.OrderNumber, O.OrderDate, SUM(OI.Quantity) Quantity, SUM(OI.UnitPrice) UnitPrice
  FROM    Customer C
  LEFT JOIN "Order" O ON O.CustomerId = C.Id
  LEFT JOIN OrderItem OI ON O.Id = OI.OrderId
  GROUP BY C.FirstName, O.Id, O.OrderNumber, O.OrderDate

   SELECT C.FirstName, O.Id, COUNT(OI.Id), O.OrderNumber, O.OrderDate, SUM(OI.Quantity) Quantity, SUM(OI.UnitPrice) UnitPrice
  FROM    Customer C
  LEFT JOIN ("Order" O 
			INNER JOIN OrderItem OI ON O.Id = OI.OrderId)
			ON O.CustomerId = C.Id
  GROUP BY C.FirstName, O.Id, O.OrderNumber, O.OrderDate

     SELECT C.FirstName, O.Id, COUNT(OI.Id), O.OrderNumber, O.OrderDate, SUM(OI.Quantity) Quantity, SUM(OI.UnitPrice) UnitPrice
  FROM  "Order" O 
	 INNER JOIN OrderItem OI ON O.Id = OI.OrderId
     RIGHT JOIN Customer C ON O.CustomerId = C.Id
  GROUP BY C.FirstName, O.Id, O.OrderNumber, O.OrderDate


  SELECT C.FirstName, O.Id, O.OrderNumber, O.OrderDate
  FROM "Order" O 
  RIGHT JOIN Customer C ON O.CustomerId = C.Id
  GROUP BY C.FirstName, O.Id, O.OrderNumber, O.OrderDate

  SELECT * FROM "Order"
    SELECT * FROM Customer
	  SELECT * FROM OrderItem

