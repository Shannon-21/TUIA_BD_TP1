CREATE TABLE Sucursal (
	ID_Sucursal int PRIMARY KEY IDENTITY NOT NULL,
	Ubicacion VARCHAR(50),
	Cantidad_Salas int,
	Funciones int,
);


CREATE TABLE Sala (
	ID_Sala int PRIMARY KEY IDENTITY NOT NULL,
	Cantidad_Butacas int,
	Funciones int,
	ID_Sucursal int FOREIGN KEY REFERENCES Sucursal(ID_Sucursal),
);


CREATE TABLE Genero (
	ID_Genero int PRIMARY KEY IDENTITY NOT NULL,
	Nombre varchar(50),
);


CREATE TABLE Pelicula (
	ID_Pelicula int PRIMARY KEY IDENTITY NOT NULL,
	Nombre varchar(50),
	Subtitulada BIT,
	APT BIT,
	ID_Genero int FOREIGN KEY REFERENCES Genero(ID_Genero),
);


CREATE TABLE Funciones (
	ID_Funcion int PRIMARY KEY IDENTITY NOT NULL,
	ID_Pelicula int FOREIGN KEY REFERENCES Pelicula(ID_Pelicula),
	Fecha date,
	Horario time,
	ID_Sala int FOREIGN KEY REFERENCES Sala(ID_Sala),
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
	Estado BIT,
);


CREATE TABLE Entrada (
	ID_Entrada int PRIMARY KEY IDENTITY NOT NULL,
	Precio int,
	DNI int FOREIGN KEY REFERENCES Usuario(DNI),
	ID_Butaca int FOREIGN KEY REFERENCES Butaca(ID_Butaca),
	ID_Funcion int FOREIGN KEY REFERENCES Funciones(ID_Funcion),
);