--Creación tabla Planes

CREATE TABLE [dbo].[Planes](
	[ID_Plan] [int] IDENTITY(1,1) NOT NULL,
	[Plan] [varchar](15) NOT NULL,
	[Descripcion] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Planes] PRIMARY KEY (ID_Plan))
 
--Plan gratis
 select * from pelicula where Premium != 1 and APT = 0
 --Plan premium
 select * from pelicula where APT = 0 
 --Plan familiar
 select * from Pelicula 

 select * from usuario

 --Agregar propiedad "Premium" para saber si la película pertenece al plan premium
ALTER TABLE Pelicula ADD Premium BIT NOT NULL DEFAULT 0
UPDATE Pelicula SET Premium = 1 WHERE ID_Pelicula IN (1001, 4390, 9110, 4578, 9458)
--Entendemos que las peliculas con APT = 1 son infantiles
--Agregar contraseña a los usuarios
ALTER TABLE Usuario ADD Clave VARCHAR(10) NOT NULL DEFAULT '#@!F3HSA"'

update Usuario set Clave = 'fabio <3' where dni = 44721345

update Usuario set Clave = '#@!F3HSA"' where clave = '0123456789'

