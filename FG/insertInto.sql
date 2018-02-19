insert into Curso values ('Lenguaje', 'CursoPrimaria')
insert into Curso values('Matematica', 'CursoPrimaria' )

insert into Tema values('Numeros Naturales', '1 a�o', 'Aprendiendo mas', 2)
insert into Tema values('Numeros Naturales', '1 a�o', 'Aprendiendo mas', 2)
insert into Tema values('Aproximacion de n�meros', '1 a�o', 'Aprendiendo mas', 2)
insert into Tema values('Numeros Naturales', '1 a�o', 'Aprendiendo mas', 2)
insert into Tema values('Numeros Naturales', '1 a�o', 'Aprendiendo mas', 2)
insert into Tema values('Numeros Naturales', '1 a�o', 'Aprendiendo mas', 2)
insert into Tema values('Numeros Naturales', '1 a�o', 'Aprendiendo mas', 2)

insert into Lecciones values('Unidades, Decenas y Centenas','Conocer numericos',1 )
insert into Lecciones values('N�meros de 5 Cifras','Conocer numericos', 2)
insert into Lecciones values('Aproximaci�n a la Centena y al Millar','Conocer numericos', 3)
insert into Lecciones values('N�meros Ordinales','Conocer numericos', 4)
insert into Lecciones values('Ejercicios de repaso','Conocer numericos', 5)
insert into Lecciones values('Suma','Conocer numericos',6 )
insert into Lecciones values('Resta','Conocer numericos',7 )

insert into Ejercicio values('Unidades, Decenas y Centenas', 'Intermedio', 1)
insert into Ejercicio values('N�meros de 5 Cifras','Intermedio', 2)
insert into Ejercicio values('Aproximaci�n a la Centena y al Millar','Intermedio', 3)
insert into Ejercicio values('N�meros Ordinales','Intermedio', 4)
insert into Ejercicio values('Ejercicios de repaso','Intermedio', 5)
insert into Ejercicio values('Suma','Intermedio',6 )
insert into Ejercicio values('Resta','Intermedio',7 )

INSERT INTO Preguntas VALUES ('�Cu�l es el mayor n�mero de 4 decenas?',
							 '94', '47', '49', '46', '15', '3', 2, 1,1);

INSERT INTO Preguntas VALUES ('�Cu�l es el n�mero que sigue al 75?',
							 '79', '74', '76', '75', '15',  '3', 2, 2,1);

INSERT INTO Preguntas VALUES ('�Qu� n�mero es menor que 36?',
							 '26', '37', '41', '55', '15',  '1', 2, 2,1);


INSERT INTO Preguntas VALUES ('Se�ala el incorrecto',
							 '21>60', '28=28', '76<78', '41>38', '15','1', 2, 1,1);

INSERT INTO Preguntas VALUES ('�Qu� serie es correcta?',
							 '8>7>6', '23>24>25', '0>11>12', '36>37>38', '15', '1', 2, 3,1);

INSERT INTO Preguntas VALUES ('�Qu� s�mbolo representa menor que?',
							 'S', '>', 'Z', '<', '15', '4', 2, 3,1);

INSERT INTO Preguntas VALUES ('�Qu� n�mero no es mayor que 23?',
							 '24', '19', '51', '32', '15', '2', 2,1,1);

INSERT INTO Preguntas VALUES ('"�Qu� n�mero es anterior a 38?',
							 '40', '37', '36', '39', '15', '2', 2, 2,1);

INSERT INTO Preguntas VALUES ('�Qu� n�mero es posterior a 14?',
							 '16', '17', '15', '13', '15', '3',2,2,1);

INSERT INTO Preguntas VALUES ('�Qu� n�mero es mayor que 75?',
							 '28', '69', '82', '73', '15', '3', 2, 1,1 );

select * from Tema
select * from Curso
Select* from Lecciones
select * from Ejercicio
Select * from RecursoEducativo
select * from Preguntas
select * from Usuarios
select* from Alumno

SELECT        TipoUsuario
FROM            Usuarios
WHERE        (Usuario = 'Mar') AND (Clave = 123)