# **Trabajo Practico N $^\circ$ 1**
## Base de Datos 1
### Tecnicatura Universitaria en Inteligencia Artificial - Comision 2

### **Integrantes del equipo**:
* Arevalo Ezequiel
* Ferrucci Constantino
* Giampaoli Fabio



----
## Enunciado

Se desea construir una web-app para la venta electronica de entradas del Cine Paraiso.

Este cine cuenta con 3 sucursales en distintas ciudades de Argentina (Rosario, Cordoba, y La plata), pero
podria abrir nuevas en el futuro.

Cada sucursal del cine tiene mas de una sala, con determinada cantidad de butacas.

La cantidad de salas no necesariamente es la misma para cada sucursal, como tampoco lo es la cantidad de butacas por sala.

Si bien las peliculas en proyeccion en una determinada semana son las mismas para las distintas sucursales,
las funciones no siempre ocurren en el mismo dia y horario.

Al momento de la compra, el usuario debe poder elegir la sucursal correspondiente, la funcion (pelicula, dia, horario y sala) y la butaca. 

A su vez, por ley, la pagina debe indicar si la pelicula es apta para todo publico o no, y si la misma esta subtitulada.

Cada pelicula tiene un genero asociado que se utilizara para la implementacion de filtros,
y en el futuro se podria utilizar tambien para construir un sistema de recomendaciones.

----
### Ejercio 1
Realice el diagrama entidad-relacion para representar un modelo de datos adecuado al problema planteado

El diagrama de entidades es el siguiente

<p align="center">
  <img width="459" alt="image" src="https://user-images.githubusercontent.com/81629492/198703962-dd1f4135-aebd-4d7b-8a3a-1d39ec96947e.png">
</p>

----

Y el diagrama de relaciones es el siguiente

<p align="center">
  <img align="center" width="397" alt="image" src="https://user-images.githubusercontent.com/81629492/198704232-92aa28ca-e83b-4341-bd2f-e70c32dc07ff.png">
</p>

