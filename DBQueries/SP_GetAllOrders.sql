CREATE PROCEDURE SP_GetAllOrders
	-- Add the parameters for the stored procedure here
	(@CustomerId INT
	)
AS
BEGIN
	BEGIN TRY

	 --to check error log
	 --Insert into "Order" (TotalAmount) values ('abc') 

	  IF (@CustomerId <> 0)
	  BEGIN
	    SELECT * FROM "Order" 
		WHERE CustomerId = @CustomerId
	  END

	  ELSE 
	  BEGIN 
	    SELECT * FROM "Order" 
	  END

	END TRY

	BEGIN CATCH 
	  INSERT INTO ErrorLog (ErrorNumber, ErrorProcedure, ErrorMessage, ErrorLine)
	  VALUES ( ERROR_NUMBER(), ERROR_PROCEDURE(), ERROR_MESSAGE(), ERROR_LINE())
	END CATCH

END
GO
