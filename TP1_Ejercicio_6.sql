USE BD1_TP1_TUIA;

-- Quitar de la tabla "Entrada" la columna "Precio".

ALTER TABLE Entradas DROP COLUMN Precio;
ALTER TABLE Peliculas ADD Precio MONEY NOT NULL DEFAULT 0;

-- Si eso no funciona, primero eliminar el constrain que marca en el error, y luego borrar la columna.

-- alter table Entradas drop constraint DF__Entradas__Precio__4E88ABD4;
-- alter table Entradas drop column Precio;


-- Agregando precio a las peliculas por  tipo de genero

UPDATE Peliculas SET Precio=100 where ID_Genero in (2, 4, 6);
UPDATE Peliculas SET Precio=250.50 where ID_Genero in (1, 3, 5, 7);



-- a) Determine el total recaudado por funcion.

/* 
    Selecciona la interseccion de las Entrada, Las funciones y las peliculas 
    agrupadas por cada funcion y suma el total vendido para cada funcion
*/

select F.ID_Funcion, sum(P.Precio) as "Total recaudado por funcion" 
from Funciones as F
	 inner join Peliculas as P
	 on F.ID_Pelicula = P.ID_Pelicula 
	 inner join Entradas as E
	 on F.ID_Funcion = E.ID_Funcion
group by F.ID_Funcion 
order by F.ID_Funcion;



/* b) Determine el promedio recaudado por funcion para cada pelicula. 

   Es decir, si la pelicula Argentina, 1985 tuvo dos funciones, y en una 
   recaudo 1000 pesos, y en la otra recaudo 3000 pesos, el promedio recaudado
   por funcion para esta pelicula es 2000 pesos.
*/

/* 
	Selecciona la interseccion de las funciones, las peliculas y las entradas agrupadas por funcion y suma el total
   recaudado por cada funcion.
   Luego se selecciona el resultado anterior agrupado por pelicula y se calcula el promedio
*/

select ID_Pelicula, avg(Total) as "Promedio por funcion"
from Funciones as M
	 inner join ( select F.ID_Funcion, sum(P.Precio) as Total 
			  from Funciones as F
				   inner join Peliculas as P
				   on F.ID_Pelicula = P.ID_Pelicula 
				   inner join Entradas as E
				   on F.ID_Funcion = E.Id_Funcion
			  group by F.ID_Funcion
		     ) as total_by_func 
			on M.ID_Funcion = total_by_func.ID_Funcion 
	  	        group by ID_Pelicula;



/* c) Determine el porcentaje de entradas vendidas por funcion, y muestre pelicula, sucursal, 
      hora y dia, solo para aquellas en las que se vendio menos del 50%.
*/

/* 
   Se selecciona y agrupan la interseccion entre todas las entradas y funciones agrupados por funcion,
   y se calcula el porcentaje de butacas ocupadas.
   Luego se selecciona el resultado anterior y se muestra solo las funciones con menos del 50% de ocupacion
*/

with t_Porcentaje as (
		  select F.ID_Funcion, P.Nombre, F.ID_Sucursal, F.ID_Sala, Fecha, Horario,
			 count(E.ID_Entrada) * 100 / (select count(ID_Butaca)
						  from Butacas
						  where ID_Sala = F.ID_Sala) as Porcentaje
		  from Entradas as E 
			   inner join Funciones as F 
			   on F.ID_Funcion = E.ID_Funcion, Peliculas as P
		  where P.ID_Pelicula = F.ID_Pelicula
		  group by F.ID_Funcion, P.Nombre, F.ID_Sucursal, F.ID_Sala, Fecha, Horario
		 )
	select * 
	from t_Porcentaje 
	where t_Porcentaje.Porcentaje < 50;



-- c) Determine, para cada pelicula, cual fue la funcion que mas recaudo.

/* 
   Se selecciona la interseccion entre las funciones, las peliculas y las entradas agrupados por funcion
   y se suma el total recaudado por cada funcion.
   Luego se selecciona la interseccion del resultado anterior agrupado por pelicula y se selecciona 
   la funcion con mayor recaudacion
*/

select P.Nombre, max(P2.Total) as "Total Recaudado", max(P2.total_vendidas) as "Total Vendidas"
from Peliculas as T
	 join (
		   select F.ID_Funcion, F.ID_Pelicula, sum(P.Precio) as Total, count(P.ID_Pelicula) as total_vendidas
		   from funciones as F
			    inner join Peliculas as P
			    on F.ID_Pelicula = P.ID_Pelicula 
			    inner join Entradas as E
			    on F.ID_Funcion = E.ID_Funcion
		   group by F.ID_Funcion, F.ID_Pelicula
		  ) as P2 
	 on P2.ID_Pelicula = T.ID_Pelicula, Peliculas as P
where P.ID_Pelicula = T.ID_Pelicula
group by P.Nombre 
order by "Total Vendidas" desc;


