--exec [dbo].[ValidarUsuario] 'gryauri@gmail.com','123456789'

ALTER PROCEDURE [dbo].[ValidarUsuario]
	@email varchar(50),
	@contrasena varchar(50)
AS
BEGIN
	SELECT 
       [Email]
      ,Nombre
      ,Apellido
      ,[Roles]
	FROM [dbo].[Usuario]
	WHERE [Email]=@email AND Contrasena=@contrasena
END
