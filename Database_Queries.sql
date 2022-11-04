-- Ejercicio A
select count(id_funcion) as Recuento 
from Funciones 
where ID_Sucursal = 3

-- Ejercicio B
Select Nombre 
from Pelicula as P, Funciones as F 
where P.ID_Pelicula = F.ID_Pelicula and F.Fecha = '2022/10/26' and  F.ID_Sucursal = 2

-- Ejercicio C
select Horario 
from Funciones 
where ID_Sucursal = 1 and ID_Pelicula = 3101 and Fecha = '2022/10/24'

-- Ejercicio D
select ID_Sucursal as Sucursal, Horario 
from Funciones 
where ID_Pelicula = 3101 and Fecha = '2022/10/24'
order by sucursal, Horario ASC

-- Ejercicio E
select P.nombre, F.fecha, F.horario 
from Funciones as F, Pelicula as P 
where F.ID_Sucursal = 1 and F.ID_Pelicula = P.ID_Pelicula and F.Fecha between '2022/10/24' and '2022/10/31' and P.ID_Genero = 1

-- Ejercicio F
select count(E.id_Entrada) as CantidadDeEntradas 
from Entrada as E
where (ID_Funcion = 25) 

-- Ejercicio G
Select ID_Butaca as ButacasLibres from Butaca where ID_Sala = 22
and ID_Butaca not in (Select ID_Butaca from Entrada where ID_Funcion = 8)

-- Ejercicio H
select P.Nombre, G.Nombre as Genero 
from Pelicula as P, Genero as G 
where P.ID_Genero = G.ID_Genero 
order by Genero
