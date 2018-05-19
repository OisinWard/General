DECLARE @i AS INT;
SET @i = 2;
DECLARE @j AS INT
SET @j = 2
DECLARE @k AS INT
SET @k = 0
DECLARE @UpperLimit AS INT
SET @UpperLimit = 5000

DECLARE @PrimesList TABLE
(
  Prime INT
)

WHILE  @i <= @UpperLimit 
	BEGIN
				
		WHILE @j < @i 

			BEGIN 
			
				IF @i%@j = 0 
			 
					SET @k = 1
					
				IF @k = 1
				BREAK

				SET @j = @j + 1
			END

		IF @k = 0
			INSERT INTO @PrimesList VALUES (@i)
			
		SET @j = 2
		SET @i = @i + 1;
		SET @k = 0
	END

SELECT * 
FROM @PrimesList