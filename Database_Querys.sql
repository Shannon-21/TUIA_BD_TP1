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
select count(E.id_Entrada) as CantidadDeEntradas 
from Entrada as E, Funciones as F 
where (F.ID_Sala in (21,22,23)) and (F.ID_Funcion = 10105) and (E.ID_Funcion = F.ID_Funcion)

-- Ejercicio G (CORREGIR)
select count(B.ID_Butaca)-count(E.id_Entrada) as CantidadDeButacasVacias
from Entrada as E, Funciones as F, Butaca as B 
where (F.ID_Funcion = 10105) and (E.ID_Funcion = F.ID_Funcion) and (B.ID_Sala = 23) and(B.ID_Sala = F.ID_Sala)

select (B.ID_Butaca) as CantidadDeButacasVacias
from Entrada as E, Funciones as F, Butaca as B 
where B.ID_Sala = 23

select COUNT(B.ID_butaca) from Butaca as B, Entrada as E where E.ID_Butaca = B.ID_Butaca

-- Ejercicio H
select P.Nombre, G.Nombre as Genero 
from Pelicula as P, Genero as G 
where P.ID_Genero = G.ID_Genero 
order by Genero