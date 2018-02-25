
create procedure RegistrarAlumno
(
@IdA int,
@NombreA varchar(200),
@ApellidoA varchar(200) ,
@EdadA int ,
@SexoA varchar(20) ,
@DireccionA varchar(50) ,
@Departamento varchar(50) ,
@Telefono int,
@Colegio varchar(100),
@FechaCreada datetime

)
as
begin
	insert into Alumno(IdA, NombreA, ApellidoA, EdadA, SexoA, DireccionA, Departamento, Telefono, Colegio, FechaCreada)
	values(@IdA, @NombreA, @ApellidoA, @EdadA, @SexoA, @DireccionA, @Departamento, @Telefono, @Colegio, @FechaCreada)
end

GO
------------------------------------------------------------------------------------------------------------------------
create procedure RegistrarDocente(
@IdDocente int,
@NombreD varchar(100),
@ApellidoD varchar(100) ,
@DNI varchar(8) ,
@Rol varchar(30),
@FechaCr datetime
)
as 
begin
	insert into Docente(IdDocente ,NombreD ,ApellidoD ,DNI ,Rol ,FechaCr )
	values (@IdDocente, @NombreD, @ApellidoD, @DNI, @Rol,@FechaCr)
end 
GO
-----------------------------------------------------------------------------------

CREATE PROCEDURE RegistrarTipoUsuario(

@IdTipo int,
@TipoUsuario varchar(50),
@NombreCompleto varchar(100),
@Usuario varchar(50),
@Clave varchar(50),
@FechaCreado datetime
)
as
begin
	insert into TipoUsuarios(IdTipo, TipoUsuario, NombreCompleto, Usuario, Clave, FechaCreado)
	values(@IdTipo, @TipoUsuario, @NombreCompleto, @Usuario, @Clave, @FechaCreado)
end
go



SELECT * FROM Alumno


INSERT INTO Alumno values('Darley', 'Evangelista','6 primaria' ,21, 'Masculino','Trujillo', 'La Libertad', 1234, 'TRM', GETDATE());