DECLARE @idComidaBuscado INTEGER = 33

DECLARE @nombreComida VARCHAR(30)

SELECT @nombreComida = ComidaFavorita.nombreComidaFavorita
FROM ComidaFavorita
WHERE ComidaFavorita.idComidaFavorita = @idComidaBuscado

IF @nombreComida IS NOT NULL
BEGIN --comienzo --
	PRINT @nombreComida;
END -- fin --
ELSE
BEGIN --comienzo --
	PRINT 'No existe ese id de comida';
END; -- fin --