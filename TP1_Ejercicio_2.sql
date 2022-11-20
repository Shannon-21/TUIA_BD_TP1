-- Crear la base de datos y la selecciona para trabajar 

	USE master;
	CREATE DATABASE BD1_TP1_TUIA;
	USE BD1_TP1_TUIA;

-- Crear las entidades de la base de datos

CREATE TABLE Sucursales (
	ID_Sucursal INT PRIMARY KEY NOT NULL,
	Ubicacion VARCHAR(20)
);


CREATE TABLE Salas (
	ID_Sala INT NOT NULL,
	ID_Sucursal INT FOREIGN KEY REFERENCES Sucursales(ID_Sucursal),
	CONSTRAINT PK_Sala PRIMARY KEY (ID_Sala, ID_Sucursal)
);


CREATE TABLE Generos (
	ID_Genero INT PRIMARY KEY NOT NULL,
	Nombre VARCHAR(20)
);


CREATE TABLE Peliculas (
	ID_Pelicula INT PRIMARY KEY NOT NULL,
	ID_Genero INT FOREIGN KEY REFERENCES Generos(ID_Genero),
	Nombre VARCHAR(50),
	Subtitulos BIT,
	APT BIT
);


CREATE TABLE Funciones (
	ID_Funcion INT UNIQUE NOT NULL IDENTITY,
	ID_Pelicula INT ,
	ID_Sala INT ,
	ID_Sucursal INT,
	Fecha DATE,
	Horario TIME(0),
	CONSTRAINT FK_Peliculas FOREIGN KEY (ID_Pelicula) REFERENCES Peliculas(ID_Pelicula),
	CONSTRAINT FK_Salas FOREIGN KEY (ID_Sala, ID_Sucursal) REFERENCES Salas(ID_Sala, ID_Sucursal),
	CONSTRAINT PK_Salas_Funciones PRIMARY KEY (ID_Pelicula, ID_Sala, ID_Sucursal, Fecha, Horario)
);


CREATE TABLE Usuarios (
	DNI INT PRIMARY KEY NOT NULL,
	Nombre VARCHAR(50),
	Correo VARCHAR(50)
);


CREATE TABLE Butacas (
	ID_Butaca int NOT NULL UNIQUE IDENTITY,
	ID_Sala INT,
	ID_Sucursal INT,
	Fila INT,
	Columna VARCHAR(1),
	CONSTRAINT FK_Sala_Butaca FOREIGN KEY (ID_Sala, ID_Sucursal) REFERENCES Salas(ID_Sala, ID_Sucursal),
	CONSTRAINT PK_Butaca PRIMARY KEY (ID_Sucursal, ID_Sala, Fila, Columna)
);


CREATE TABLE Entradas (
	ID_Entrada INT NOT NULL UNIQUE IDENTITY,
	ID_Butaca int FOREIGN KEY REFERENCES Butacas(ID_Butaca),
	ID_Funcion INT FOREIGN KEY REFERENCES Funciones(ID_Funcion),
	DNI INT FOREIGN KEY REFERENCES Usuarios(DNI),
	Precio MONEY NOT NULL DEFAULT 0,
	CONSTRAINT PK_Entrada PRIMARY KEY (ID_Butaca, ID_Funcion)
);

