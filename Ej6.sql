ALTER TABLE Entrada DROP COLUMN Precio;
ALTER TABLE Pelicula ADD Precio MONEY NOT NULL DEFAULT 0;

/* Agregando precio a las peliculas por  tipo de genero */
UPDATE Pelicula SET Precio=100  where ID_Genero in (2,4,6);
UPDATE Pelicula SET Precio=250.50 where ID_Genero in (1,3,7);

/* Ej : - Determine el total recaudado por funcion. */
/* Selecciona la interseccion de las Entrada, Las funciones y las peliculas agrupadas por Cada funcion y suma el total
vendido para cada funcion */
select F.id_funcion, sum(P.precio) as "Total recaudado por funcion" from funciones as F
INNER JOIN Pelicula as P
on F.ID_Pelicula = P.ID_Pelicula 
INNER JOIN Entrada as E
on F.id_funcion=E.Id_Funcion
group by F.ID_Funcion order by F.ID_Funcion;

/* Ej: - Determine el promedio recaudado por funcion para cada pelicula. 
Es decir, si la pelicula Argentina, 1985 tuvo dos funciones, y en una recaudo 1000 pesos, 
y en la otra recaudo 3000 pesos, el promedio recaudado por funcion para esta pelicula es 2000 pesos. */
/* Selecciona la interseccion de las funciones, las peliculas y las entradas agrupadas por funcion y suma el total
recaudado por cada funcion.
Luego se selecciona el resultado anterior agrupado por pelicula y se calcula el promedio */
select ID_Pelicula, avg(Total) as "Promedio por funcion" from Funciones as M
INNER JOIN ( 
	select F.id_funcion,sum(P.precio) as Total from funciones as F
	INNER JOIN Pelicula as P
	on F.ID_Pelicula = P.ID_Pelicula 
	INNER JOIN Entrada as E
	on F.id_funcion=E.Id_Funcion
	group by F.ID_Funcion
) as total_by_func On M.id_funcion = total_by_func.id_funcion group by ID_Pelicula;

/* Ej 3: - Determine el porcentaje de entradas vendidas por funcion, y muestre pelicula, sucursal, hora y dia, solo para aquellas en las que se vendio menos del 50%.*/
/* Se selecciona y agrupan la interseccion entre todas las entradas y funciones agrupados por funcion, y se calcula el porcentaje de butacas ocupadas.
Luego se selecciona el resultado anterior y se muestra solo las funciones con menos del 50% de ocupacion */
with t_Porcentaje as (
	select F.id_funcion, F.ID_Sucursal, F.Id_Sala,fecha, horario,count(E.id_entrada)*100/(select count(id_butaca) from Butaca where ID_sala=F.id_SALA) as Porcentaje from Entrada as E 
	inner join Funciones as F 
	on F.id_funcion = E.id_funcion 
	group by F.id_funcion, F.ID_Sucursal, F.Id_Sala,fecha, horario
) select * From t_Porcentaje where t_Porcentaje.Porcentaje < 50;

/* Ej 4:- Determine, para cada pelicula, cual fue la funcion que mas recaudo.*/
/* Se selecciona la interseccion entre las funciones, las peliculas y las entradas agrupados por funcion y se suma el total recaudado por cada funcion.
Luego se selecciona la interseccion del resultado anterior agrupado por pelicula y se selecciona la funcion con mayor recaudacion */

SELECT 
    T.id_pelicula, max(P2.Total) as "Total Recaudado",  max(P2.total_vendidas) as "Total Vendidas"
FROM Pelicula as T
JOIN (
	select F.id_funcion,F.ID_Pelicula, sum(P.precio) as Total, count(P.id_pelicula) as total_vendidas from funciones as F
	INNER JOIN Pelicula as P
	on F.ID_Pelicula = P.ID_Pelicula 
	INNER JOIN Entrada as E
	on F.id_funcion=E.Id_Funcion
	group by F.ID_Funcion,F.ID_Pelicula
) P2 on P2.ID_Pelicula = T.ID_Pelicula 
group by T.ID_Pelicula order by "Total Vendidas" desc;