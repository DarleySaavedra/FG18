CREATE DATABASE COLEGIO

USE COLEGIO

create table Alumno
(
	AluId			int identity(1,1) primary key,
	AluNombre		varchar(100) not null,
	AluApellido		varchar(100) not null,
	AluEdad			int not null,
	AluDireccion	varchar(300)
)
go

create table Materia
(
	MatId		int identity(1,1) primary key,
	MatNombre	varchar(100) not null
)

go
create table Nota
(
	NotId			int identity(1,1) primary key,
	AluId			int not null foreign key references Alumno(AluId),
	MatId			int not null foreign key references Materia(MatId),
	NotNota			decimal(6,2) not null
)
go

create table Usuarios
(
	UserId			int identity(1,1) primary key,
	Username		varchar(20) not null,
	Password		varchar(20) not null,
	Email			varchar(30) not null,
	CreatedDate		datetime	not null,
	LastloginDate	datetime
)

insert into Usuarios(Username, Password, Email, CreatedDate, LastloginDate)
values('admin','123456', 'admin@gmail.com', getdate(), null)
go

create procedure up_ValidadAcceso(
@Username varchar(20),
@Password varchar(20),
@Resp int output
)
as
begin
select @Resp=COUNT(*) from Usuarios where Username=@Username and Password=@Password
set @Resp=isnull(@Resp,0)
end


declare @resp int
exec up_ValidadAcceso 'admin', '123456', @resp out
select @resp

select * from Usuarios