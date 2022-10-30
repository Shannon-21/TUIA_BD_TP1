# **Trabajo Practico N $^\circ$ 1**
## Base de Datos 1
### Tecnicatura Universitaria en Inteligencia Artificial - Comision 2

### **Integrantes del equipo**:
* Arevalo Ezequiel
* Ferrucci Constantino
* Giampaoli Fabio


----

<details><summary>Enunciado</summary><p>

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

</p></details>

----

<details><summary>Ejercicio 1</summary><p>

  Realice el diagrama entidad-relacion para representar un modelo de datos adecuado al problema planteado

  El diagrama de entidades es el siguiente

  ![image](https://user-images.githubusercontent.com/81629492/198884976-b9496e6c-de7b-4093-aecb-d58d2f66b251.png)

  ----

  Y el diagrama de relaciones es el siguiente

  ![image](https://user-images.githubusercontent.com/81629492/198885018-34216a9d-9b32-4311-bbdf-1de21844ea5f.png)

  Link al archivo del diagrama: https://app.diagrams.net/#G1llJklRTFGxUa5fOtU_CFANpiyDLjFv7l

</p></details>

----
<details><summary>Ejercicio 2</summary><p>

  Escriba las instrucciones SQL para la creacion de las tablas correspondientes al diagrama anterior.
  
</p></details>

----

<details><summary>Ejercicio 3</summary><p>

  Escriba instrucciones SQL para la insercion de datos, de modo de tener informacion sobre:

  * Las 3 sucursales existentes actualmente.
  * Al menos 3 salas por sucursal.
  * Al menos 20 butacas por sala.
  * Al menos 5 peliculas (una de ellas es Argentina, 1985, y otra de ellas es de genero ciencia ficcion).
  * Al menos 5 funciones (algunas de ellas deben ocurrir entre el 24 y el 31 de octubre de2022).

</p></details>

----
<details><summary>Ejercicio 4</summary><p>

  Escriba consultas SQL que aporten la informacion para responder las siguientes preguntas.
  Tenga en cuenta que puede ser util agregar nuevas filas a las tablas, a modo de facilitar el
  testeo de las consultas.

  * ¿Cuantas funciones hay en la sucursal La Plata (no importa si la funcion ya ocurrio o no)?
  * ¿Cuales son las peliculas en cartelera en una fecha determinada (fije la fecha que prefiera) en la sucursal Cordoba?
  * ¿Cuales son los horarios disponibles para ver la pelicula Argentina, 1985 en una fecha determinada (fije la fecha) en la sucursal Rosario?
  * ¿Cuales son los horarios disponibles para ver la pelicula Argentina, 1985 en una fecha determinada (fije la fecha) para cada sucursal? 
     Muestre estos resultados ordenados cronologicamente de forma creciente.
  * ¿Cuales peliculas de ciencia ficcion hay en cartelera la semana del 24 de octubre de 2022 en la sucursal Rosario?
  * ¿Cuales son las butacas vendidas para ver Argentina, 1985 en Cordoba en una funcion determinada (fije la funcion)?
  * ¿Cuales son las butacas libres para ver Argentina, 1985 en Cordoba en una funcion determinada (fije la funcion)?
  * ¿Cuantas peliculas por genero estan o estuvieron en cartelera en el Cine Paraiso?

</p></details>

----

<details><summary>Ejercicio 5</summary><p>

  Suponga que, una vez creada la base de datos, se pide hacer una pequena modificacion para poder guardar informacion respecto al precio de las entradas. 
  Determine que alteraciones seria conveniente realizar en las tablas en los siguientes casos, justificando la respuesta:
  * El precio de la entrada depende unicamente de la sucursal.
  * El precio de la entrada depende unicamente de la pelicula.
  * El preico de la entrada depende unicamente de la ubicacion de la butaca.

</p></details>

----

<details><summary>Ejercicio 6</summary><p>

  Suponga ahora que el Cine Paraiso finalmente decide fijar el precio de las entradas unicamente en funcion de la pelicula.

  Realice las modificaciones necesarias para que el modelo se corresponda a este nuevo requerimiento,
  y escriba consultas SQL que cumplan los siguientes requisitos:

  * Determine el total recaudado por funcion.
  * Determine el promedio recaudado por funcion para cada pelicula. 
    Es decir, si la pelicula Argentina, 1985 tuvo dos funciones, y en una recaudo 1000 pesos,
    y en la otra recaudo 3000 pesos, el promedio recaudado por funcion para esta pelicula es 2000 pesos.
  * Determine el porcentaje de entradas vendidas por funcion, y muestre pelicula, sucursal, hora y dia, solo para aquellas en las que se vendio menos del 50%.
  * Determine, para cada pelicula, cual fue la funcion que mas recaudo.

</p></details>
