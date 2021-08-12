DROP FUNCTION IF EXISTS fn_line_wrapper;

CREATE FUNCTION fn_line_wrapper ( wrapBy INT, textvalue VARCHAR ( 20000 ) )
RETURNS VARCHAR ( 20000 )
BEGIN
	SET @textvalue = REPLACE ( textvalue, '\n', '' );
	SET @pos = 0;
	SET @inc = wrapBy;
	SET @count = length( @textvalue ) / @inc;
	WHILE
			@count > 0 DO
			SET @pos = @pos + @inc;
			SET @textvalue = INSERT ( @textvalue, @pos, 0, '\n' );
			SET @count = @count - 1;
	END WHILE;
	RETURN @textvalue;
END;
