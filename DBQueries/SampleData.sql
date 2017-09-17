select COUNT(*) from Customer
SET IDENTITY_INSERT Customer ON

INSERT INTO Customer (Id,FirstName,LastName,City,Country,Phone) VALUES (1,'Maria','Anders','Berlin','Germany','030-0074321')
INSERT INTO Customer (Id,FirstName,LastName,City,Country,Phone) VALUES (2,'Ana','Trujillo','México D.F.','Mexico','(5) 555-4729')
INSERT INTO Customer (Id,FirstName,LastName,City,Country,Phone) VALUES (3,'Antonio','Moreno','México D.F.','Mexico','(5) 555-3932')
INSERT INTO Customer (Id,FirstName,LastName,City,Country,Phone) VALUES (4,'Thomas','Hardy','London','UK','(171) 555-7788')
INSERT INTO Customer (Id,FirstName,LastName,City,Country,Phone) VALUES (5,'Christina','Berglund','Luleå','Sweden','0921-12 34 65')

SET IDENTITY_INSERT Customer OFF
select COUNT(*) from Customer

select COUNT(*) from Supplier
SET IDENTITY_INSERT Supplier ON

INSERT INTO [Supplier] ([Id],[CompanyName],[ContactName],[City],[Country],[Phone],[Fax])
VALUES(1,'Exotic Liquids','Charlotte Cooper','London','UK','(171) 555-2222',NULL)

INSERT INTO [Supplier] ([Id],[CompanyName],[ContactName],[City],[Country],[Phone],[Fax])
VALUES(2,'New Orleans Cajun Delights','Shelley Burke','New Orleans','USA','(100) 555-4822',NULL)

INSERT INTO [Supplier] ([Id],[CompanyName],[ContactName],[City],[Country],[Phone],[Fax])
VALUES(3,'Grandma Kelly''s Homestead','Regina Murphy','Ann Arbor','USA','(313) 555-5735','(313) 555-3349')

INSERT INTO [Supplier] ([Id],[CompanyName],[ContactName],[City],[Country],[Phone],[Fax])
VALUES(4,'Tokyo Traders','Yoshi Nagase','Tokyo','Japan','(03) 3555-5011',NULL)

INSERT INTO [Supplier] ([Id],[CompanyName],[ContactName],[City],[Country],[Phone],[Fax])
VALUES(5,'Cooperativa de Quesos ''Las Cabras''','Antonio del Valle Saavedra','Oviedo','Spain','(98) 598 76 54',NULL)

select COUNT(*) from Supplier
SET IDENTITY_INSERT Supplier OFF

select COUNT(*) from Product
SET IDENTITY_INSERT Product ON

INSERT INTO [Product] ([Id],[ProductName],[SupplierId],[UnitPrice],[Package],[IsDiscontinued])VALUES(1,'Chai',1,18.00,'10 boxes x 20 bags',0)
INSERT INTO [Product] ([Id],[ProductName],[SupplierId],[UnitPrice],[Package],[IsDiscontinued])VALUES(2,'Chang',1,19.00,'24 - 12 oz bottles',0)
INSERT INTO [Product] ([Id],[ProductName],[SupplierId],[UnitPrice],[Package],[IsDiscontinued])VALUES(3,'Aniseed Syrup',1,10.00,'12 - 550 ml bottles',0)
INSERT INTO [Product] ([Id],[ProductName],[SupplierId],[UnitPrice],[Package],[IsDiscontinued])VALUES(4,'Chef Anton''s Cajun Seasoning',2,22.00,'48 - 6 oz jars',0)
INSERT INTO [Product] ([Id],[ProductName],[SupplierId],[UnitPrice],[Package],[IsDiscontinued])VALUES(5,'Chef Anton''s Gumbo Mix',2,21.35,'36 boxes',1)
INSERT INTO [Product] ([Id],[ProductName],[SupplierId],[UnitPrice],[Package],[IsDiscontinued])VALUES(6,'Grandma''s Boysenberry Spread',3,25.00,'12 - 8 oz jars',0)
INSERT INTO [Product] ([Id],[ProductName],[SupplierId],[UnitPrice],[Package],[IsDiscontinued])VALUES(7,'Uncle Bob''s Organic Dried Pears',3,30.00,'12 - 1 lb pkgs.',0)
INSERT INTO [Product] ([Id],[ProductName],[SupplierId],[UnitPrice],[Package],[IsDiscontinued])VALUES(8,'Northwoods Cranberry Sauce',3,40.00,'12 - 12 oz jars',0)
INSERT INTO [Product] ([Id],[ProductName],[SupplierId],[UnitPrice],[Package],[IsDiscontinued])VALUES(9,'Mishi Kobe Niku',4,97.00,'18 - 500 g pkgs.',1)
INSERT INTO [Product] ([Id],[ProductName],[SupplierId],[UnitPrice],[Package],[IsDiscontinued])VALUES(10,'Ikura',4,31.00,'12 - 200 ml jars',0)

select COUNT(*) from Product
SET IDENTITY_INSERT Product OFF

select COUNT(*) from [Order]  select * from [Order]
SET IDENTITY_INSERT [Order] ON
INSERT INTO [Order] ([Id],[OrderDate],[CustomerId],[TotalAmount],[OrderNumber])VALUES(1,'Jul  4 2012 12:00:00:000AM',1,440.00,'542378')
INSERT INTO [Order] ([Id],[OrderDate],[CustomerId],[TotalAmount],[OrderNumber])VALUES(2,'Jul  5 2012 12:00:00:000AM',1,1863.40,'542379')
INSERT INTO [Order] ([Id],[OrderDate],[CustomerId],[TotalAmount],[OrderNumber])VALUES(3,'Jul  8 2012 12:00:00:000AM',1,1813.00,'542380')
INSERT INTO [Order] ([Id],[OrderDate],[CustomerId],[TotalAmount],[OrderNumber])VALUES(4,'Jul  8 2012 12:00:00:000AM',2,670.80,'542381')
INSERT INTO [Order] ([Id],[OrderDate],[CustomerId],[TotalAmount],[OrderNumber])VALUES(5,'Jul  9 2012 12:00:00:000AM',2,3730.00,'542382')
INSERT INTO [Order] ([Id],[OrderDate],[CustomerId],[TotalAmount],[OrderNumber])VALUES(6,'Jul 10 2012 12:00:00:000AM',4,1444.80,'542383')
INSERT INTO [Order] ([Id],[OrderDate],[CustomerId],[TotalAmount],[OrderNumber])VALUES(7,'Jul 11 2012 12:00:00:000AM',4,625.20,'542384')
INSERT INTO [Order] ([Id],[OrderDate],[CustomerId],[TotalAmount],[OrderNumber])VALUES(8,'Jul 12 2012 12:00:00:000AM',4,2490.50,'542385')
INSERT INTO [Order] ([Id],[OrderDate],[CustomerId],[TotalAmount],[OrderNumber])VALUES(9,'Jul 15 2012 12:00:00:000AM',2,517.80,'542386')
INSERT INTO [Order] ([Id],[OrderDate],[CustomerId],[TotalAmount],[OrderNumber])VALUES(10,'Jul 16 2012 12:00:00:000AM',5,1119.90,'542387')
select COUNT(*) from [Order]
SET IDENTITY_INSERT [Order] OFF

select COUNT(*) from [Order]
SET IDENTITY_INSERT [OrderItem] ON
INSERT INTO [OrderItem] ([Id],[OrderId],[ProductId],[UnitPrice],[Quantity])VALUES(1,1,1,14.00,12)
INSERT INTO [OrderItem] ([Id],[OrderId],[ProductId],[UnitPrice],[Quantity])VALUES(2,1,2,9.80,10)
INSERT INTO [OrderItem] ([Id],[OrderId],[ProductId],[UnitPrice],[Quantity])VALUES(3,1,3,34.80,5)
INSERT INTO [OrderItem] ([Id],[OrderId],[ProductId],[UnitPrice],[Quantity])VALUES(4,2,4,18.60,9)
INSERT INTO [OrderItem] ([Id],[OrderId],[ProductId],[UnitPrice],[Quantity])VALUES(5,2,5,42.40,40)
INSERT INTO [OrderItem] ([Id],[OrderId],[ProductId],[UnitPrice],[Quantity])VALUES(6,3,6,7.70,10)
INSERT INTO [OrderItem] ([Id],[OrderId],[ProductId],[UnitPrice],[Quantity])VALUES(7,3,7,42.40,35)
INSERT INTO [OrderItem] ([Id],[OrderId],[ProductId],[UnitPrice],[Quantity])VALUES(8,3,8,16.80,15)
INSERT INTO [OrderItem] ([Id],[OrderId],[ProductId],[UnitPrice],[Quantity])VALUES(9,4,9,16.80,6)
INSERT INTO [OrderItem] ([Id],[OrderId],[ProductId],[UnitPrice],[Quantity])VALUES(10,4,10,15.60,15)
SET IDENTITY_INSERT [OrderItem] OFF
select COUNT(*) from [Order]