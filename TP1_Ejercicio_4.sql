USE BD1_TP1_TUIA;

-- Ejercicio A
/* ¿Cuantas funciones hay en la sucursal La Plata? */

select count(ID_Funcion) as Recuento 
from Funciones 
where ID_Sucursal = 3


-- Ejercicio B
/* ¿Cuales son las peliculas en cartelera en una 
    fecha determinada en la sucursal Cordoba? */

select Nombre 
from Peliculas as P, 
	 Funciones as F 
where P.ID_Pelicula = F.ID_Pelicula and 
	  F.Fecha = '2022/10/30' and 
	  F.ID_Sucursal = 2


-- Ejercicio C
/* ¿Cuales son los horarios disponibles para ver la pelicula 
	Argentina, 1985 en una fecha determinada en la sucursal Rosario? */

select Horario 
from Funciones 
where ID_Sucursal = 1 and 
	  ID_Pelicula = 3101 and 
	  Fecha = '2022/10/24'


-- Ejercicio D
/* ¿Cuales son los horarios disponibles para ver la pelicula
    Argentina, 1985 en una fecha determinada para cada sucursal?
    Muestre estos resultados ordenados cronologicamente de forma creciente. */

select ID_Sucursal as Sucursal, Horario 
from Funciones 
where ID_Pelicula = 3101 and 
	  Fecha = '2022/10/24'
order by Sucursal, Horario asc


-- Ejercicio E
/* ¿Cuales peliculas de ciencia ficcion hay en cartelera 
    la semana del 24 de octubre de 2022 en la sucursal Rosario? */

select P.Nombre, F.Fecha, F.Horario 
from Funciones as F, Peliculas as P 
where F.ID_Sucursal = 1 and 
	  F.ID_Pelicula = P.ID_Pelicula and 
	  F.Fecha between '2022/10/24' and '2022/10/31' and 
	  P.ID_Genero = 1


-- Ejercicio F
/* ¿Cuales son las butacas vendidas para ver 
    Argentina, 1985 en Cordoba en una funcion determinada? */

select E.ID_Butaca 
from Entradas as E
where ID_Funcion = 8


-- Ejercicio G
/* ¿Cuales son las butacas libres para ver
	Argentina, 1985 en Cordoba en una funcion determinada? */


select B.ID_Butaca 
from Butacas as B
	inner join Funciones as F
	on B.ID_Sala = F.ID_Sala
where B.ID_Butaca not in ( select ID_Butaca 
						   from Entradas
						   where ID_Funcion = 8) and 
						   F.ID_Funcion = 8


-- Ejercicio H
/* ¿Cuantas peliculas por genero que estan o
    estuvieron en cartelera en el Cine Paraiso? */

select G.Nombre, count(G.ID_Genero) as Recuento
from Peliculas as P, Generos as G
where P.ID_Genero = G.ID_Genero 
group by G.Nombre
order by Recuento desc

