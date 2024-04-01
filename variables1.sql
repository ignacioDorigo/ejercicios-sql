DECLARE @colorBuscado VARCHAR(30) = 'Rojo'

SELECT idColor,nombreColor as idDelColorBuscado
FROM ColorFavorito
WHERE nombreColor = @colorBuscado