use MyFirstGame

select * from Curso

insert into Curso values ('Lenguaje') 
insert into Curso values('Matematica')
----------------------------------------------------------------------
select * from Tema
insert into Tema values('Numeros Naturales', '1 a�o', 'Aprendiendo mas','Matematica', 2)
insert into Tema values('Numeros Naturales', '1 a�o', 'Aprendiendo mas','Matematica', 2)
insert into Tema values('Aproximacion de n�meros', '1 a�o', 'Aprendiendo mas','Matematica', 2)
insert into Tema values('Numeros Naturales', '1 a�o', 'Aprendiendo mas','Matematica', 2)
insert into Tema values('Numeros Naturales', '1 a�o', 'Aprendiendo mas','Matematica', 2)
insert into Tema values('Numeros Naturales', '1 a�o', 'Aprendiendo mas','Matematica', 2)
insert into Tema values('Numeros Naturales', '1 a�o', 'Aprendiendo mas','Matematica', 2)
-----------------------------------------------------------------------
select * from Lecciones
insert into Lecciones values('Unidades, Decenas y Centenas','Conocer numericos','Numeros Naturales',1 )
insert into Lecciones values('N�meros de 5 Cifras','Conocer numericos','Numeros Naturales', 2)
insert into Lecciones values('Aproximaci�n a la Centena y al Millar','Conocer numericos','Aproximacion de n�meros', 3)
insert into Lecciones values('N�meros Ordinales','Conocer numericos','Numeros Naturales', 4)
insert into Lecciones values('Ejercicios de repaso','Conocer numericos','Numeros Naturales', 5)
insert into Lecciones values('Suma','Conocer numericos','Numeros Naturales',6 )
insert into Lecciones values('Resta','Conocer numericos','Numeros Naturales',7 )
-------------------------------------------------------------------------------------------------------------------
select * from Ejercicio
insert into Ejercicio values('Unidades, Decenas y Centenas', 'Intermedio', 'Unidades, Decenas y Centenas',1)
insert into Ejercicio values('N�meros de 5 Cifras','Intermedio','N�meros de 5 Cifras', 2)
insert into Ejercicio values('Aproximaci�n a la Centena y al Millar','Intermedio', 'Aproximaci�n a la Centena y al Millar',3)
insert into Ejercicio values('N�meros Ordinales','Intermedio','N�meros Ordinales', 4)
insert into Ejercicio values('Ejercicios de repaso','Intermedio','Ejercicios de repaso', 5)
insert into Ejercicio values('Suma','Intermedio','Suma',6 )
insert into Ejercicio values('Resta','Intermedio','Resta',7 )
--------------------------------------------------------------------------------------------
select * from Preguntas
INSERT INTO Preguntas VALUES ('�Cu�l es el mayor n�mero de 4 decenas?',
							 '94', '47', '49', '46', '15', '3', 2);

INSERT INTO Preguntas VALUES ('�Cu�l es el n�mero que sigue al 75?',
							 '79', '74', '76', '75', '15',  '3', 2);

INSERT INTO Preguntas VALUES ('�Qu� n�mero es menor que 36?',
							 '26', '37', '41', '55', '15',  '1', 2);


INSERT INTO Preguntas VALUES ('Se�ala el incorrecto',
							 '21>60', '28=28', '76<78', '41>38', '15','1', 2);

INSERT INTO Preguntas VALUES ('�Qu� serie es correcta?',
							 '8>7>6', '23>24>25', '0>11>12', '36>37>38', '15', '1', 2);

INSERT INTO Preguntas VALUES ('�Qu� s�mbolo representa menor que?',
							 'S', '>', 'Z', '<', '15', '4', 2);

INSERT INTO Preguntas VALUES ('�Qu� n�mero no es mayor que 23?',
							 '24', '19', '51', '32', '15', '2', 2);

INSERT INTO Preguntas VALUES ('"�Qu� n�mero es anterior a 38?',
							 '40', '37', '36', '39', '15', '2', 2);

INSERT INTO Preguntas VALUES ('�Qu� n�mero es posterior a 14?',
							 '16', '17', '15', '13', '15', '3',2);

INSERT INTO Preguntas VALUES ('�Qu� n�mero es mayor que 75?',
							 '28', '69', '82', '73', '15', '3', 2);