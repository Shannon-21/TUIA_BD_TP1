-- Ejercicio A
select count(id_funcion) as Recuento 
from Funciones 
where ID_Sala in (31,32,33)

-- Ejercicio B
Select Nombre 
from Pelicula as P, Funciones as F 
where P.ID_Pelicula = F.ID_Pelicula and F.Horario = '15:00:00' and  F.ID_Sala in (21,22,23)

-- Ejercicio C
select Horario 
from Funciones 
where ID_Sala in (11,12,13) and Fecha = '2022/10/24'

-- Ejercicio D
select Fecha, Horario 
from funciones 
where ID_Pelicula = 3101
order by Fecha asc

-- Ejercicio E
select P.nombre, F.fecha, F.horario 
from Funciones as F, Pelicula as P 
where (F.ID_Sala in (11,12,13)) and (F.ID_Pelicula = P.ID_Pelicula) and (F.Fecha between '2022/10/24' and '2022/10/31') and P.ID_Genero = 1

-- Ejercicio F
select E.id_Entrada as CantidadDeEntradas 
from Entrada as E
where (ID_Funcion = 11023) 

-- Ejercicio G
Select ID_Butaca from Butaca where ID_Sala = 32
and ID_Butaca not in (Select ID_Butaca from Entrada)

-- Ejercicio H
select P.Nombre, G.Nombre as Genero 
from Pelicula as P, Genero as G 
where P.ID_Genero = G.ID_Genero 
order by Genero
