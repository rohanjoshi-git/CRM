CREATE PROCEDURE SP_AddNewOrder
(
@OrderDate DATETIME,
@OrderNumber VARCHAR(10),
@CustomerId INT,
@TotalAmount DECIMAL(12,2)
)
AS

BEGIN

  BEGIN TRY

    INSERT INTO "Order"
	VALUES (@OrderDate, 
	        @OrderNumber,
			@CustomerId,
			@TotalAmount
			)

  END TRY

  BEGIN CATCH
	INSERT INTO ErrorLog (ErrorNumber, ErrorProcedure, ErrorMessage, ErrorLine)
	  VALUES ( ERROR_NUMBER(), ERROR_PROCEDURE(), ERROR_MESSAGE(), ERROR_LINE())

  END CATCH

END
