USE BD1_TP1_TUIA;


-- Ejercicio A: 
-- ¿Cuantas funciones hay en la sucursal La Plata?

	SELECT COUNT(id_funcion) AS Recuento 
	FROM Funciones 
	WHERE ID_Sala LIKE '3%'



-- Ejercicio B: 
-- ¿Cuales son las peliculas en cartelera en una fecha determinada en la sucursal Cordoba?

	SELECT Nombre 
	FROM Pelicula AS P, Funciones AS F 
	WHERE P.ID_Pelicula = F.ID_Pelicula AND
	      F.Fecha = '2022/10/30' AND
	      F.ID_Sala LIKE '2%'



-- Ejercicio C: 
-- ¿Cuales son los horarios disponibles para ver la pelicula Argentina, 1985 en una fecha determinada en la sucursal Rosario?

	SELECT Horario
	FROM Funciones 
	WHERE ID_Sala LIKE '1%' AND
	      Fecha = '2022/10/24' AND 
	      ID_Pelicula = 3101



-- Ejercicio D:
-- ¿Cuales son los horarios disponibles para ver la pelicula Argentina, 1985 en una fecha determinada para cada sucursal?
-- Muestre estos resultados ordenados cronologicamente de forma creciente.

	SELECT F.Fecha, F.Horario, Su.Ubicacion
	FROM Funciones AS F, Sucursal AS Su, Sala AS Sa
	WHERE Sa.ID_Sucursal = Su.ID_Sucursal AND
	      Sa.ID_Sala = F.ID_Sala AND
	      ID_Pelicula = 3101 AND
	      Fecha = '2022/10/24'
	ORDER BY Fecha, Horario 



-- Ejercicio E:
-- ¿Cuales peliculas de ciencia ficcion hay en cartelera la semana del 24 de octubre de 2022 en la sucursal Rosario?

	SELECT P.Nombre, F.Fecha, F.Horario 
	FROM Funciones AS F, Pelicula AS P 
	WHERE F.ID_Pelicula = P.ID_Pelicula AND 
	      F.ID_Sala LIKE '1%' AND
	      F.Fecha BETWEEN '2022/10/24' AND '2022/10/31' AND
	      P.ID_Genero = 1



-- Ejercicio F:
-- ¿Cuales son las butacas vendidas para ver Argentina, 1985 en Cordoba en una funcion determinada?

	SELECT E.ID_Butaca AS Butacas_Vendidas
	FROM Entrada AS E, Funciones AS F 
	WHERE E.ID_Funcion = F.ID_Funcion AND
	      F.ID_Funcion = 011023
	


-- Ejercicio G:
-- ¿Cuales son las butacas libres para ver Argentina, 1985 en Cordoba en una funcion determinada?

   /*	NOT 
	(
		SELECT E.ID_Butaca AS Butacas_Vendidas
		FROM Entrada AS E, Funciones AS F 
		WHERE E.ID_Funcion = F.ID_Funcion AND
	    	      F.ID_Funcion = 011023
	) (?) 
  */



-- Ejercicio H:
-- ¿Cuantas peliculas por genero estan o estuvieron en cartelera en el Cine Paraiso?

	SELECT G.Nombre AS Genero, COUNT(P.ID_pelicula) AS Numero_de_peliculas
	FROM Pelicula AS P, Genero As G
	WHERE P.ID_Genero = G.ID_Genero
	GROUP BY G.Nombre



