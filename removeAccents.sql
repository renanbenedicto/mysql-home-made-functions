DROP FUNCTION IF EXISTS fn_remove_accents;

CREATE FUNCTION fn_remove_accents( textvalue VARCHAR ( 20000 ) )
RETURNS varchar(20000) CHARSET utf8
BEGIN

	SET @textvalue = textvalue;
	-- ACCENTS
	SET @withaccents = 'ŠšŽžÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÑÒÓÔÕÖØÙÚÛÜÝŸÞàáâãäåæçèéêëìíîïñòóôõöøùúûüýÿþƒ';
	SET @withoutaccents = 'SsZzAAAAAAACEEEEIIIINOOOOOOUUUUYYBaaaaaaaceeeeiiiinoooooouuuuyybf';
	SET @count = length( @withaccents );
	WHILE @count > 0 DO
			SET @textvalue = REPLACE (@textvalue, substring( @withaccents, @count, 1 ), substring( @withoutaccents, @count, 1 ));
			SET @count = @count - 1;
	END WHILE;
	RETURN @textvalue;

END
