USE BD1_TP1_TUIA;

INSERT INTO Sucursal
VALUES (1, 'Rosario'),
       (2, 'Cordoba'),
       (3, 'La Plata')


INSERT INTO Sala
VALUES (11, 1),(12, 1),(13, 1),
       (21, 2),(22, 2),(23, 2),
       (31, 3),(32, 3),(33, 3)


INSERT INTO Butaca (ID_Sala, Id_Sucursal, Fila, Columna)
VALUES  (11, 1, 1, 'a'),
	(11, 1, 2, 'a'),
	(11, 1, 3, 'a'),
	(11, 1, 4, 'a'),
	(11, 1, 5, 'a'),
	(11, 1, 1, 'b'),
	(11, 1, 2, 'b'),
	(11, 1, 3, 'b'),
	(11, 1, 4, 'b'),
	(11, 1, 5, 'b'),
	(11, 1, 1, 'c'),
	(11, 1, 2, 'c'),
	(11, 1, 3, 'c'),
	(11, 1, 4, 'c'),
	(11, 1, 5, 'c'),
	(11, 1, 1, 'd'),
	(11, 1, 2, 'd'),
	(11, 1, 3, 'd'),
	(11, 1, 4, 'd'),
	(11, 1, 5, 'd'),
	(12, 1, 1, 'a'),
	(12, 1, 2, 'a'),
	(12, 1, 3, 'a'),
	(12, 1, 4, 'a'),
	(12, 1, 5, 'a'),
	(12, 1, 1, 'b'),
	(12, 1, 2, 'b'),
	(12, 1, 3, 'b'),
	(12, 1, 4, 'b'),
	(12, 1, 5, 'b'),
	(12, 1, 1, 'c'),
	(12, 1, 2, 'c'),
	(12, 1, 3, 'c'),
	(12, 1, 4, 'c'),
	(12, 1, 5, 'c'),
	(12, 1, 1, 'd'),
	(12, 1, 2, 'd'),
	(12, 1, 3, 'd'),
	(12, 1, 4, 'd'),
	(12, 1, 5, 'd'),
	(13, 1, 1, 'a'),
	(13, 1, 2, 'a'),
	(13, 1, 3, 'a'),
	(13, 1, 4, 'a'),
	(13, 1, 5, 'a'),
	(13, 1, 1, 'b'),
	(13, 1, 2, 'b'),
	(13, 1, 3, 'b'),
	(13, 1, 4, 'b'),
	(13, 1, 5, 'b'),
	(13, 1, 1, 'c'),
	(13, 1, 2, 'c'),
	(13, 1, 3, 'c'),
	(13, 1, 4, 'c'),
	(13, 1, 5, 'c'),
	(13, 1, 1, 'd'),
	(13, 1, 2, 'd'),
	(13, 1, 3, 'd'),
	(13, 1, 4, 'd'),
	(13, 1, 5, 'd'),
	(21, 2, 1, 'a'),
	(21, 2, 2, 'a'),
	(21, 2, 3, 'a'),
	(21, 2, 4, 'a'),
	(21, 2, 5, 'a'),
	(21, 2, 1, 'b'),
	(21, 2, 2, 'b'),
	(21, 2, 3, 'b'),
	(21, 2, 4, 'b'),
	(21, 2, 5, 'b'),
	(21, 2, 1, 'c'),
	(21, 2, 2, 'c'),
	(21, 2, 3, 'c'),
	(21, 2, 4, 'c'),
	(21, 2, 5, 'c'),
	(21, 2, 1, 'd'),
	(21, 2, 2, 'd'),
	(21, 2, 3, 'd'),
	(21, 2, 4, 'd'),
	(21, 2, 5, 'd'),
	(22, 2, 1, 'a'),
	(22, 2, 2, 'a'),
	(22, 2, 3, 'a'),
	(22, 2, 4, 'a'),
	(22, 2, 5, 'a'),
	(22, 2, 1, 'b'),
	(22, 2, 2, 'b'),
	(22, 2, 3, 'b'),
	(22, 2, 4, 'b'),
	(22, 2, 5, 'b'),
	(22, 2, 1, 'c'),
	(22, 2, 2, 'c'),
	(22, 2, 3, 'c'),
	(22, 2, 4, 'c'),
	(22, 2, 5, 'c'),
	(22, 2, 1, 'd'),
	(22, 2, 2, 'd'),
	(22, 2, 3, 'd'),
	(22, 2, 4, 'd'),
	(22, 2, 5, 'd'),
	(23, 2, 1, 'a'),
	(23, 2, 2, 'a'),
	(23, 2, 3, 'a'),
	(23, 2, 4, 'a'),
	(23, 2, 5, 'a'),
	(23, 2, 1, 'b'),
	(23, 2, 2, 'b'),
	(23, 2, 3, 'b'),
	(23, 2, 4, 'b'),
	(23, 2, 5, 'b'),
	(23, 2, 1, 'c'),
	(23, 2, 2, 'c'),
	(23, 2, 3, 'c'),
	(23, 2, 4, 'c'),
	(23, 2, 5, 'c'),
	(23, 2, 1, 'd'),
	(23, 2, 2, 'd'),
	(23, 2, 3, 'd'),
	(23, 2, 4, 'd'),
	(23, 2, 5, 'd'),
	(31, 3, 1, 'a'),
	(31, 3, 2, 'a'),
	(31, 3, 3, 'a'),
	(31, 3, 4, 'a'),
	(31, 3, 5, 'a'),
	(31, 3, 1, 'b'),
	(31, 3, 2, 'b'),
	(31, 3, 3, 'b'),
	(31, 3, 4, 'b'),
	(31, 3, 5, 'b'),
	(31, 3, 1, 'c'),
	(31, 3, 2, 'c'),
	(31, 3, 3, 'c'),
	(31, 3, 4, 'c'),
	(31, 3, 5, 'c'),
	(31, 3, 1, 'd'),
	(31, 3, 2, 'd'),
	(31, 3, 3, 'd'),
	(31, 3, 4, 'd'),
	(31, 3, 5, 'd'),
	(32, 3, 1, 'a'),
	(32, 3, 2, 'a'),
	(32, 3, 3, 'a'),
	(32, 3, 4, 'a'),
	(32, 3, 5, 'a'),
	(32, 3, 1, 'b'),
	(32, 3, 2, 'b'),
	(32, 3, 3, 'b'),
	(32, 3, 4, 'b'),
	(32, 3, 5, 'b'),
	(32, 3, 1, 'c'),
	(32, 3, 2, 'c'),
	(32, 3, 3, 'c'),
	(32, 3, 4, 'c'),
	(32, 3, 5, 'c'),
	(32, 3, 1, 'd'),
	(32, 3, 2, 'd'),
	(32, 3, 3, 'd'),
	(32, 3, 4, 'd'),
	(32, 3, 5, 'd'),
	(33, 3, 1, 'a'),
	(33, 3, 2, 'a'),
	(33, 3, 3, 'a'),
	(33, 3, 4, 'a'),
	(33, 3, 5, 'a'),
	(33, 3, 1, 'b'),
	(33, 3, 2, 'b'),
	(33, 3, 3, 'b'),
	(33, 3, 4, 'b'),
	(33, 3, 5, 'b'),
	(33, 3, 1, 'c'),
	(33, 3, 2, 'c'),
	(33, 3, 3, 'c'),
	(33, 3, 4, 'c'),
	(33, 3, 5, 'c'),
	(33, 3, 1, 'd'),
	(33, 3, 2, 'd'),
	(33, 3, 3, 'd'),
	(33, 3, 4, 'd'),
	(33, 3, 5, 'd')


INSERT INTO Genero
VALUES (1, 'Ciencia ficcion'),
       (2, 'Animado'),
       (3, 'Drama'),
       (4, 'Fantasia'),
       (5, 'Terror'),
       (6, 'Romance'),
       (7, 'Comedia')


INSERT INTO Pelicula
VALUES (3412, 1, 'The Avengers', 1, 1),
       (9458, 1, 'Star Wars', 0, 1),
       (3101, 3, 'Argentina, 1985', 0, 0),
       (1711, 4, 'Edward Scissorhands', 1, 0),
       (4578, 2, 'My neighbor Tororo', 1, 1),
       (1120, 5, 'Sonrie', 1, 0),
       (9110, 6, 'Bajo la misma estrella', 0, 0),
       (0014, 7, 'Scary movie 5', 0, 0),
       (9812, 1, 'Chappie', 1, 0),
       (5012, 7, 'Son como niños 2', 1, 0),
       (4390, 2, 'Dragon Ball super Broly', 1, 1),
       (1001, 3, 'Parasite', 1, 0)



INSERT INTO Funciones (ID_Pelicula, ID_Sala, ID_Sucursal, Fecha, Horario)
VALUES (3101, 13, 1, '2022/10/24', '15:30:00'),
       (3412, 32, 3, '2021/04/05', '18:00:00'),
       (4578, 21, 2, '2022/10/30', '15:00:00'),
       (9458, 31, 3, '2022/10/31', '20:00:00'),
       (1711, 22, 2, '2022/04/06', '19:45:00'),
       (3101, 32, 3, '2022/03/06', '20:45:00'),
       (9458, 31, 3, '2022/07/22', '17:15:00'),
       (3101, 22, 2, '2022/10/28', '17:00:00'),
       (1711, 11, 1, '2022/10/31', '14:45:00'),
       (3412, 12, 1, '2022/12/21', '18:15:00'),
       (4578, 33, 3, '2022/01/21', '13:00:00'),
       (3101, 13, 1, '2022/10/31', '19:00:00'),
       (1711, 12, 1, '2022/09/09', '15:45:00'),
       (1001, 13, 1, '2022/10/30', '19:30:00'),
       (4390, 32, 3, '2022/09/15', '15:00:00'),
       (9812, 11, 1, '2022/10/25', '18:45:00'),
       (1711, 31, 3, '2022/11/06', '13:45:00'),
       (1120, 23, 2, '2022/10/31', '18:30:00'),
       (5012, 13, 1, '2022/11/02', '19:00:00'),
       (9110, 22, 2, '2022/11/21', '14:30:00'),
       (0014, 21, 2, '2022/10/26', '19:45:00'),
       (4390, 23, 2, '2022/11/15', '17:45:00'),
       (1120, 22, 2, '2022/10/30', '12:30:00'),
       (3101, 13, 1, '2022/10/24', '18:45:00'),
       (3101, 21, 2, '2022/10/24', '19:15:00'), 
       (3101, 22, 2, '2022/10/24', '13:00:00'), 
       (3101, 33, 3, '2022/10/24', '14:45:00'),
       (3412, 12, 1, '2022/10/26', '15:15:00'), 
       (9458, 13, 1, '2022/10/27', '18:45:00') 


INSERT INTO Usuario
VALUES (12235012, 'Robert Downey Jr.', 'ironman@gmail.com'),
       (233451, 'Mirta Legrand', 'lamirta@hotmail.com'),
       (44721345, 'Constantino Ferrucci', 'tinoferrucci@gmail.com'),
       (4733901, 'Alberto Fernandez', 'elarbertito@gmail.com'),
       (178125, 'Jesus de Nazareth', 'Jisus123@hotmail.com'),
       (50123300, 'Edgar Alan Poe', 'alanpoe21@gmail.com'),
       (25688911, 'Dwayne Johnson', 'therock144@gmail.com')


INSERT INTO Entrada (ID_Butaca, ID_Funcion, DNI, Precio)
VALUES (47, 1, 178125, 570),
       (148, 2, 12235012, 430),
       (62, 3, 25688911, 200),
       (139, 4, 44721345, 450),
       (40, 10, 233451, 210),
       (93, 8, 50123300, 710),
       (23, 10, 25688911, 110),
       (57, 1, 233451, 250),
       (48, 12, 44721345, 510),
       (85, 8, 233451, 310),
       (160, 6, 44721345, 460),
       (152, 6, 233451, 410),
       (116, 18, 25688911, 810),
       (65, 3, 178125, 410),
       (92, 8, 233451, 540),
       (91, 8, 44721345, 540),
       (88, 5, 25688911, 440),
       (81, 5, 44721345, 640),
       (61, 25, 25688911, 450)
       
