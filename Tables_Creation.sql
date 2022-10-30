-- Create the database

  -- Remove the database if exists another with the same name
  
	USE master;
	DROP DATABASE IF EXISTS BD1_TP1_TUIA;

  -- Create the database and select it to work 

	CREATE DATABASE BD1_TP1_TUIA;
	USE BD1_TP1_TUIA;



-- Create the tables

	CREATE TABLE Sucursal (
		ID_Sucursal int PRIMARY KEY NOT NULL,
		Ubicacion VARCHAR(20),
	);


	CREATE TABLE Sala (
		ID_Sala int PRIMARY KEY NOT NULL,
		ID_Sucursal int FOREIGN KEY REFERENCES Sucursal(ID_Sucursal),
	);


	CREATE TABLE Genero (
		ID_Genero int PRIMARY KEY NOT NULL,
		Nombre varchar(20),
	);


	CREATE TABLE Pelicula (
		ID_Pelicula int PRIMARY KEY NOT NULL,
		ID_Genero int FOREIGN KEY REFERENCES Genero(ID_Genero),
		Nombre varchar(50),
		Subtitulos BIT,
		APT BIT,
	);


	CREATE TABLE Funciones (
		ID_Funcion int PRIMARY KEY NOT NULL,
		ID_Pelicula int FOREIGN KEY REFERENCES Pelicula(ID_Pelicula),
		ID_Sala int FOREIGN KEY REFERENCES Sala(ID_Sala),
		Fecha date,
		Horario time,
	);


	CREATE TABLE Usuario (
		DNI int PRIMARY KEY NOT NULL,
		Nombre varchar(50),
		Correo varchar(50),
	);


	CREATE TABLE Butaca (
		ID_Butaca varchar(10) PRIMARY KEY NOT NULL,
		ID_Sala int FOREIGN KEY REFERENCES Sala(ID_Sala),
		Fila int,
		Columna varchar(1),
	);


	CREATE TABLE Entrada (
		ID_Entrada int PRIMARY KEY NOT NULL,
		ID_Butaca varchar(10) FOREIGN KEY REFERENCES Butaca(ID_Butaca),
		ID_Funcion int FOREIGN KEY REFERENCES Funciones(ID_Funcion),
		DNI int FOREIGN KEY REFERENCES Usuario(DNI),
		Precio money,
	);
