--Creación tabla Planes y Subcripciones

CREATE TABLE Planes (
	ID_Plan int IDENTITY(1,1) NOT NULL,
	Nombre varchar(15) NOT NULL,
	Descripcion varchar(100) NOT NULL,
	Precio float NOT NULL,
	CONSTRAINT PK_Planes PRIMARY KEY (ID_Plan)
	);

CREATE TABLE Suscripciones (
	DNI int NOT NULL,
	ID_Plan int NOT NULL,
	FechaAlta date NOT NULL,
	Tipo bit NOT NULL,
	CONSTRAINT PK_Suscripciones PRIMARY KEY( DNI, ID_Plan),
	CONSTRAINT FK_Suscripciones_Usuarios FOREIGN KEY (DNI) REFERENCES Usuarios,
	CONSTRAINT FK_Suscripciones_Plan FOREIGN KEY (ID_Plan) REFERENCES Planes
);
 

select IdPlan, Dni from Suscripciones;

 --Agregar propiedad "Premium" para saber si la película pertenece al plan premium

ALTER TABLE Peliculas ADD Premium BIT NOT NULL DEFAULT 0

UPDATE Peliculas SET Premium = 1 
WHERE ID_Pelicula IN (1001, 4390, 9110, 4578, 9458)


--Entendemos que las peliculas con APT = 1 son infantiles

--Agregar contraseña por defecto a los usuarios

ALTER TABLE Usuarios ADD Clave VARCHAR(10) NOT NULL DEFAULT '123456'


-- Insertar datos sobre los planes disponibles

INSERT INTO Planes (Nombre, Descripcion)
VALUES ('Gratuito', '(acceso restringido a 10 pel´ıculas por mes)'),
	   ('Premium', '(acceso a algunas pel´ıculas en cartelera)'),
	   ('Familiar', '(incluye las pel´ıculas del plan premium, y pel´ıculas infantiles)')


-- Insertar datos sobre los usurios de la plataforma

INSERT INTO Suscripciones (DNI, FechaAlta, ID_Plan, Tipo)
VALUES (50123300, '2022/10/29', 1, 0),
	   (12235012, '2022/09/12', 2, 0),
	   (50123300, '2022/11/10', 3, 0),
	   (178125, '2022/11/01', 1, 1),
	   (25688911, '2022/10/31', 2, 0),
	   (44721345, '2022/09/12', 3, 1),
	   (4733901, '2022/10/10', 1, 1)



-- Procedure del ejercicio 4 (No se donde va)

CREATE PROCEDURE dbo.LoginUsuario
@pDni INT,
@pClave varchar(10)
AS
BEGIN

SELECT CASE WHEN EXISTS (SELECT * FROM Suscripciones 
INNER JOIN Usuario ON Suscripciones.DNI = Usuario.DNI
WHERE Usuario.DNI = @pDni 
AND Usuario.Clave = @pClave
AND DATEDIFF(DAY, FechaAlta, GETDATE()) <= (CASE WHEN Tipo = 0 THEN 30 ELSE 365 END)) THEN 1 ELSE 0 END AS LoginCorrecto

END
