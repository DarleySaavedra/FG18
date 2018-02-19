create database MyFirstGame

use MyFirstGame

create table Docente(

IdDocente int not null primary key,
NombreD varchar(500) not null,
ClaveD varchar(500) not null,
Rol varchar(100) not null
)

create table Alumno(
IdAlumno int not null primary key,
NombreA varchar(200) not null,
ApellidoA varchar(200) not null,
EdadA int not null,
SexoA varchar(20) not null,
DireccionA varchar(50) not null,
Departamento varchar(50) not null,
Telefono int not null,
Colegio varchar(100)
)

create procedure RegistrarAlumno
(
@IdAlumno int,
@NombreA varchar(200),
@ApellidoA varchar(200) ,
@EdadA int ,
@SexoA varchar(20) ,
@DireccionA varchar(50) ,
@Departamento varchar(50) ,
@Telefono int,
@Colegio varchar(100)

)
as
begin
	insert into Alumno(IdAlumno, NombreA, ApellidoA, EdadA, SexoA, DireccionA, Departamento, Telefono, Colegio)
	values(@IdAlumno, @NombreA, @ApellidoA, @EdadA, @SexoA, @DireccionA, @Departamento, @Telefono, @Colegio)
end

GO

create procedure ConsultarAlumno(
@usu varchar(20),
@pass varchar(20)
)
as
begin
select NombreA from Alumno where @usu=NombreA and @pass=EdadA
end;


SELECT * FROM Alumno


INSERT INTO Alumno values(0012, 'Pep', 'Zoe', 21, 'Masculino','Trujillo', 'La Libertad', 1234, 'TRM');