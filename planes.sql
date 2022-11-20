--Creación tabla Planes

CREATE TABLE Planes (
	ID_Plan int IDENTITY(1,1) NOT NULL,
	Nombre varchar(15) NOT NULL,
	Descripcion varchar(100) NOT NULL,
	CONSTRAINT PK_Planes PRIMARY KEY (ID_Plan)
	);


CREATE TABLE Suscripciones (
	ID_Usuario int IDENTITY(1,1) NOT NULL PRIMARY KEY,
	Fecha_Alta DATE PRIMARY KEY NOT NULL,
	ID_Plan int IDENTITY(1,1) NOT NULL,
	Tipo BIT
);
 

 --Agregar propiedad "Premium" para saber si la película pertenece al plan premium

ALTER TABLE Peliculas ADD Premium BIT NOT NULL DEFAULT 0

UPDATE Peliculas SET Premium = 1 
WHERE ID_Pelicula IN (1001, 4390, 9110, 4578, 9458)

--Entendemos que las peliculas con APT = 1 son infantiles

--Agregar contraseña a los usuarios
ALTER TABLE Usuarios ADD Clave VARCHAR(10) NOT NULL DEFAULT '#@!F3HSA"'


INSERT INTO Planes (Nombre, Descripcion)
VALUES ('Gratuito', '(acceso restringido a 10 pel´ıculas por mes)'),
	   ('Premium', '(acceso a algunas pel´ıculas en cartelera)'),
	   ('Familiar', '(incluye las pel´ıculas del plan premium, y pel´ıculas infantiles)')


CREATE TABLE Suscripciones (
	DNI int NOT NULL,
	FechaAlta date NOT NULL,
	ID_Plan int NOT NULL,
	Tipo bit NOT NULL,
	CONSTRAINT PK_Suscripciones PRIMARY KEY( DNI, FechaAlta),
	CONSTRAINT FK_Suscripciones_Usuarios FOREIGN KEY (DNI) REFERENCES Usuarios,
	CONSTRAINT FK_Suscripciones_Plan FOREIGN KEY (ID_Plan) REFERENCES Planes
);
