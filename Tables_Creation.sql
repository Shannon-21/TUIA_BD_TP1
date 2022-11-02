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
		ID_Sala INT PRIMARY KEY NOT NULL,
		ID_Sucursal INT FOREIGN KEY REFERENCES Sucursal(ID_Sucursal),
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
		ID_Funcion INT PRIMARY KEY NOT NULL,
		ID_Pelicula INT FOREIGN KEY REFERENCES Pelicula(ID_Pelicula),
		ID_Sala INT FOREIGN KEY REFERENCES Sala(ID_Sala),
		Fecha DATE,
		Horario TIME,
	);


	CREATE TABLE Usuario (
		DNI INT PRIMARY KEY NOT NULL,
		Nombre VARCHAR(50),
		Correo VARCHAR(50),
	);


	CREATE TABLE Butaca (
		ID_Butaca VARCHAR(10) PRIMARY KEY NOT NULL,
		ID_Sala INT FOREIGN KEY REFERENCES Sala(ID_Sala),
		Fila INT,
		Columna VARCHAR(1),
	);


	CREATE TABLE Entrada (
		ID_Entrada INT PRIMARY KEY NOT NULL,
		ID_Butaca VARCHAR(10) FOREIGN KEY REFERENCES Butaca(ID_Butaca),
		ID_Funcion INT FOREIGN KEY REFERENCES Funciones(ID_Funcion),
		DNI INT FOREIGN KEY REFERENCES Usuario(DNI),
		Precio MONEY,
	);


