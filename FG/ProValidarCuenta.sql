USE [MyFirstGame]
GO
/****** Object:  StoredProcedure [dbo].[RegistrarUsuario]    Script Date: 16/02/2018 21:53:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[RegistrarUsuario]
(
@TipoUsuario varchar(50),
@NombreCompleto varchar(100),
@Usuario varchar(50),
@Clave varchar(50),
@FechaCreado datetime
)
as
begin
	insert into Usuarios(  TipoUsuario, NombreCompleto, Usuario, Clave, FechaCreado)
	values( @TipoUsuario,@NombreCompleto, @Usuario, @Clave, GETDATE())
end