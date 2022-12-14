# **Trabajo Practico Base de Datos 1**
## Tecnicatura Universitaria en Inteligencia Artificial - Comision 2

### **Integrantes del equipo**:
* Arevalo Ezequiel
* Ferrucci Constantino
* Giampaoli Fabio
* Revello Simon


----

## Enunciado TP 2

Considere la situación planteada en el Trabajo Práctico 1, en donde se está desarrollando la base de datos para el sistema de venta electrónica de entradas del Cine Paraíso.

1. Determine si las relaciones presentadas en la resolución del Trabajo Práctico 1 están en *3FN*.
    
    En caso afirmativo, justificar por qué.
    
    En caso negativo, explicar por qué no lo están, y realizar las modificaciones necesarias para que si esté en 3FN.
    
    Incluya el diagrama entidad-relación original, y el modificado (en caso de que haya hecho alguna modificación).
    
2. Suponga que el Cine Paraíso desea abrir una plataforma de streaming. Dicha plataforma funcionará a través de suscripciones (que pueden ser mensuales o anuales), y será accesible mediante un usuario y una contraseña.
    
    En la primera versión, los usuarios podrán suscribirse a este servicio optando por alguno de los tres planes existentes:
    
    - *Plan gratuito* (acceso restringido a 10 películas por mes).
    - *Plan premium* (acceso a algunas películas en cartelera).
    - *Plan familiar* (incluye las películas del plan premium, y películas infantiles).
    
    A su vez, se debe tener en cuenta el registro de pagos, y si el plan del usuario está activo o no según los mismos.
    
    Determine qué relaciones definiría para poder representar las subscripciones a la nueva plataforma de streaming, teniendo en cuenta que deben encontrarse en *3FN*.
    
    Es posible reutilizar o modificar alguna de las relaciones previamente existentes.
    
    Escriba el diagrama entidad-relación para dichas relaciones, explicando brevemente qué representa cada atributo, y justifique por qué las relaciones se encuentran normalizadas
    
3. Suponga que se desea verificar mensualmente si los planes de cada uno de los usuarios están al día con los pagos y, en función de eso, actualizar el plan como activo o inactivo.
    
    Cree el procedimiento almacenado correspondiente, y proponga los criterios a tener en cuenta para pasar un plan de activo a inactivo.
    
4. Cree un procedimiento almacenado que reciba como parámetros un usuario y una contraseña, y devuelva 1 si el login es correcto (es decir, coincide usuario, contraseña, y el plan está activo) y 0 en cualquier otro caso.

----

<details><summary>Enunciado TP 1</summary><p>

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

  El diagrama de entidades es el siguiente:

  ![image](https://user-images.githubusercontent.com/81629492/199860606-dc2fc04e-9626-433b-bcdb-b3728886ee9e.png)

  ----

  Y el diagrama de relaciones es el siguiente:

  ![image](https://user-images.githubusercontent.com/81629492/198885018-34216a9d-9b32-4311-bbdf-1de21844ea5f.png)

  Link al archivo del diagrama: https://app.diagrams.net/#G1llJklRTFGxUa5fOtU_CFANpiyDLjFv7l

</p></details>

----
<details><summary>Ejercicio 2</summary><p>

  Escriba las instrucciones SQL para la creacion de las tablas correspondientes al diagrama anterior.
  
  Los comandos fueron escritos en el archivo Tables_Creation.sql
  
  Informar sobre las deciones tomadas en la crecion (lo de las claves compuestas y demas)
  
</p></details>

----

<details><summary>Ejercicio 3</summary><p>

  Escriba instrucciones SQL para la insercion de datos, de modo de tener informacion sobre:
  
  <ol type="a">
    <li> Las 3 sucursales existentes actualmente. </li>
    <li> Al menos 3 salas por sucursal. </li>
    <li> Al menos 20 butacas por sala. </li>
    <li> Al menos 5 peliculas (una de ellas es Argentina, 1985, y otra de ellas es de genero ciencia ficcion). </li>
    <li> Al menos 5 funciones (algunas de ellas deben ocurrir entre el 24 y el 31 de octubre de2022). </li>
  </ol>  
  
  Los comandos fueron escritos en el archivo Insertion_Tables.sql

</p></details>

----
<details><summary>Ejercicio 4</summary><p>

  Escriba consultas SQL que aporten la informacion para responder las siguientes preguntas.
  Tenga en cuenta que puede ser util agregar nuevas filas a las tablas, a modo de facilitar el
  testeo de las consultas.
  <ol type="a">
    <li> ¿Cuantas funciones hay en la sucursal La Plata (no importa si la funcion ya ocurrio o no)? </li>
    <li> ¿Cuales son las peliculas en cartelera en una fecha determinada (fije la fecha que prefiera) en la sucursal Cordoba? </li>
    <li> ¿Cuales son los horarios disponibles para ver la pelicula Argentina, 1985 en una fecha determinada (fije la fecha) en la sucursal Rosario? </li>
    <li> ¿Cuales son los horarios disponibles para ver la pelicula Argentina, 1985 en una fecha determinada (fije la fecha) para cada sucursal?. </li>
    <li> ¿Cuales peliculas de ciencia ficcion hay en cartelera la semana del 24 de octubre de 2022 en la sucursal Rosario.</li> 
    <li> ¿Cuales son las butacas vendidas para ver Argentina, 1985 en Cordoba en una funcion determinada (fije la funcion)? </li> 
    <li> ¿Cuales son las butacas libres para ver Argentina, 1985 en Cordoba en una funcion determinada (fije la funcion)? </li> 
    <li> ¿Cuantas peliculas por genero estan o estuvieron en cartelera en el Cine Paraiso? </li> 
  </ol>
  
  Las queries fueron escritas en el archivo Queries_Ejercicio4.sql

</p></details>

----

<details><summary>Ejercicio 5</summary><p>

  Suponga que, una vez creada la base de datos, se pide hacer una pequena modificacion para poder guardar informacion respecto al precio de las entradas. 
  Determine que alteraciones seria conveniente realizar en las tablas en los siguientes casos, justificando la respuesta:
  <ol type="a">
    <li> El precio de la entrada depende unicamente de la sucursal. </li>
    <li> El precio de la entrada depende unicamente de la pelicula. </li>
    <li> El preico de la entrada depende unicamente de la ubicacion de la butaca. </li> 
  </ol>
  
  Las respuestas fueron guardadas en el archivo Tables_Alterations.sql
  
</p></details>

----

<details><summary>Ejercicio 6</summary><p>

  Suponga ahora que el Cine Paraiso finalmente decide fijar el precio de las entradas unicamente en funcion de la pelicula.

  Realice las modificaciones necesarias para que el modelo se corresponda a este nuevo requerimiento,
  y escriba consultas SQL que cumplan los siguientes requisitos:

  <ol type="a">

  <li> Determine el total recaudado por funcion. </li>
  <li> Determine el promedio recaudado por funcion para cada pelicula.
    Es decir, si la pelicula Argentina, 1985 tuvo dos funciones, y en una recaudo 1000 pesos,
    y en la otra recaudo 3000 pesos, el promedio recaudado por funcion para esta pelicula es 2000 pesos.</li>
  <li> Determine el porcentaje de entradas vendidas por funcion, y muestre pelicula, sucursal, hora y dia, solo para aquellas en las que se vendio menos del 50%.</li>
  <li> Determine, para cada pelicula, cual fue la funcion que mas recaudo.</li>
  
  </ol>  
    
  La solucion al ejercicio fue descrita en el archivo x.sql

</p></details>
