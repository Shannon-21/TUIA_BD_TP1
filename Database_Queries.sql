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
select E.id_Butaca 
from Entrada as E
where ID_Funcion = 25 

-- Ejercicio G
Select *  from Butaca as B
INNER JOIN Funciones  as F
on  b.id_sala=F.id_sala
where b.ID_Butaca not in (Select ID_Butaca from Entrada where ID_Funcion = 8) and F.ID_Funcion = 8

-- Ejercicio H
select P.Nombre, G.Nombre, G.Id_Genero 
from Pelicula as P, Genero as G
where P.ID_Genero = G.ID_Genero 
order by G.ID_Genero