-- EN SQL Server para renombrar una tabla es un procedimiento almacenado --
-- En MySQL es con ALTER TABLE -- 
EXEC sp_rename 'Tabla1','ColorFavorito';
EXEC sp_rename 'Tabla2','ComidaFavorita'
