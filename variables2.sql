DECLARE @idColorBuscado INTEGER = 3

DECLARE @nombreColor VARCHAR(30)

SELECT @nombreColor = ColorFavorito.nombreColor
FROM ColorFavorito
WHERE idColor = @idColorBuscado

PRINT 'El nombre del color es : ' +  @nombreColor