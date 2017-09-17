USE [CRM_DB]
GO

DECLARE	@return_value int
--DECLARE @dt  datetime = datetimefromparts(2017, 09, 15, 0, 0, 0, 0)
--@dt = datetimefromparts(2017, 09)
DECLARE @dt datetime

set @dt = datetimefromparts(2017, 09, 15, 2, 0, 0, 0)


EXEC	@return_value = [dbo].[SP_AddNewOrder]
		@OrderDate = @dt,
		@OrderNumber = 1,
		@CustomerId = 1,
		@TotalAmount = 1

SELECT	'Return Value' = @return_value

GO


select * from "Order"