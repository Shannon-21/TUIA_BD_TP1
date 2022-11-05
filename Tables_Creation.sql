-- Create the database

  -- Remove the database if exists another with the same name
  
USE master;
DROP DATABASE IF EXISTS BD1_TP1_TUIA;

  -- Create the database and select it to work 

CREATE DATABASE BD1_TP1_TUIA;
USE BD1_TP1_TUIA;

-- Create the tables

CREATE TABLE Sucursal (
	ID_Sucursal INT PRIMARY KEY NOT NULL,
	Ubicacion VARCHAR(20),
);


CREATE TABLE Sala (
	ID_Sala INT NOT NULL,
	ID_Sucursal INT FOREIGN KEY REFERENCES Sucursal(ID_Sucursal),
	CONSTRAINT pk_sala PRIMARY KEY (ID_Sala, ID_Sucursal)
);


CREATE TABLE Genero (
	ID_Genero INT PRIMARY KEY NOT NULL,
	Nombre VARCHAR(20),
);


CREATE TABLE Pelicula (
	ID_Pelicula INT PRIMARY KEY NOT NULL,
	ID_Genero INT FOREIGN KEY REFERENCES Genero(ID_Genero),
	Nombre VARCHAR(50),
	Subtitulos BIT,
	APT BIT,
);


CREATE TABLE Funciones (
	ID_Funcion INT UNIQUE NOT NULL IDENTITY,
	ID_Pelicula INT ,
	ID_Sala INT ,
	ID_Sucursal INT,
	Fecha DATE,
	Horario TIME(0),
	CONSTRAINT FK_PELICULA FOREIGN KEY (ID_Pelicula) REFERENCES Pelicula(ID_Pelicula),
	CONSTRAINT FK_SALA FOREIGN KEY (Id_Sala,ID_Sucursal) REFERENCES SALA(Id_Sala,Id_sucursal),
	CONSTRAINT PK_SALA_FUNCIONES PRIMARY KEY (ID_Pelicula,ID_Sala,ID_Sucursal,Fecha,Horario)
);


CREATE TABLE Usuario (
	DNI INT PRIMARY KEY NOT NULL,
	Nombre VARCHAR(50),
	Correo VARCHAR(50),
);


CREATE TABLE Butaca (
	ID_Butaca int NOT NULL UNIQUE IDENTITY,
	ID_Sala INT,
	Id_Sucursal INT,
	Fila INT,
	Columna VARCHAR(1),
	CONSTRAINT FK_SALA_BUTACA FOREIGN KEY (Id_Sala,ID_Sucursal) REFERENCES SALA(Id_Sala,Id_sucursal),
	CONSTRAINT PK_BUTACA PRIMARY KEY (id_sucursal,id_sala,fila,columna)
);


CREATE TABLE Entrada (
	ID_Entrada INT NOT NULL UNIQUE IDENTITY,
	ID_Butaca int FOREIGN KEY REFERENCES Butaca(ID_Butaca),
	ID_Funcion INT FOREIGN KEY REFERENCES Funciones(ID_Funcion),
	DNI INT FOREIGN KEY REFERENCES Usuario(DNI),
	Precio MONEY NOT NULL DEFAULT 0,
	CONSTRAINT PK_Entrada PRIMARY KEY (id_butaca,id_funcion)
);
