CREATE TABLE Sucursal (
	ID_Sucursal int PRIMARY KEY IDENTITY NOT NULL,
	Ubicacion VARCHAR(50),
);


CREATE TABLE Sala (
	ID_Sala int PRIMARY KEY IDENTITY NOT NULL,
	ID_Sucursal int FOREIGN KEY REFERENCES Sucursal(ID_Sucursal),
);


CREATE TABLE Genero (
	ID_Genero int PRIMARY KEY IDENTITY NOT NULL,
	Nombre varchar(50),
);


CREATE TABLE Pelicula (
	ID_Pelicula int PRIMARY KEY IDENTITY NOT NULL,
	ID_Genero int FOREIGN KEY REFERENCES Genero(ID_Genero),
	Nombre varchar(50),
	Subtitulos BIT,
	APT BIT,
);


CREATE TABLE Funciones (
	ID_Funcion int PRIMARY KEY IDENTITY NOT NULL,
	ID_Pelicula int FOREIGN KEY REFERENCES Pelicula(ID_Pelicula),
	ID_Sala int FOREIGN KEY REFERENCES Sala(ID_Sala),
	Fecha date,
	Horario time,
);


CREATE TABLE Usuario (
	DNI int PRIMARY KEY IDENTITY NOT NULL,
	Nombre varchar(50),
	Correo varchar(50),
);


CREATE TABLE Butaca (
	ID_Butaca int PRIMARY KEY IDENTITY NOT NULL,
	ID_Sala int FOREIGN KEY REFERENCES Sala(ID_Sala),
	Columna varchar(1),
	Fila int,
);


CREATE TABLE Entrada (
	ID_Entrada int PRIMARY KEY IDENTITY NOT NULL,
	ID_Butaca int FOREIGN KEY REFERENCES Butaca(ID_Butaca),
	ID_Funcion int FOREIGN KEY REFERENCES Funciones(ID_Funcion),
	DNI int FOREIGN KEY REFERENCES Usuario(DNI),
	Precio int,
);
