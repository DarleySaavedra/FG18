
create table Alumno(
IdA int identity(1,1) primary key,
NombreA varchar(100) not null,
ApellidoA varchar(100) not null,
GradoA varchar(100) not null,
EdadA varchar(100) not null,
SexoA varchar(100) not null,
DireccionA varchar(100) not null,
Departamento varchar(100) not null,
Telefono varchar(100) not null,
Colegio varchar(100) not null,
FechaCreada  datetime not null
)

create table TipoUsuarios
(
IdTipo int identity(1,1) primary key,
TipoUsuario varchar(50),
Usuario varchar(50),
Clave varchar(50),
FechaCreado datetime
)


create table Docente(
IdDocente int identity(1,1) primary key,
NombreD varchar(100) not null,
ApellidoD varchar(100) not null,
DNI varchar(8) not null,
Rol varchar(30) not null,
FechaCr datetime
)

insert into Docente values
('Pep', 'Zoe', '123', 'admin', getdate())
insert into TipoUsuarios values
('admin', 'Pep', '123', GETDATE())