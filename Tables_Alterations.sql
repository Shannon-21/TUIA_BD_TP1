--Ejercicio 5
/*
a) El precio de la entrada depende únicamente de la sucursal.
Para que el precio dependa únicamente de la sucursal, es neceario que la tabla "Sucursal" tenga
una columna "Precio".
*/

ALTER TABLE Sucursal ADD Precio MONEY NOT NULL DEFAULT 0

/*
b) El precio de la entrada depende unicamente de la pelicula.
En este caso, la tabla "Película" debe tener la columna "Precio" ya que ahora el precio pasa a ser
una propiedad de las películas.
*/

ALTER TABLE Pelicula ADD Precio MONEY NOT NULL DEFAULT 0

/*
c) El precio de la entrada depende unicamente de la ubicacion de la butaca.
Ahora, hay que hacer lo mismo pero para la tabla "Butaca" por las razones explicadas anteriormente.
*/

ALTER TABLE Butaca ADD Precio MONEY NOT NULL DEFAULT 0

/*
Dado que consideramos que el precio es algo obligatorio en todos los casos se establece como campo "NOT NULL"
ya que todas las funciones tienen un precio. En el caso de que pueda haber funciones gratuitas el precio es 0 (el cual es el valor por defecto).
Esto es debatible ya que se podría considerar que las filas que tienen el atributo "Precio" en null son las gratuitas o son funciones que aún no han sido configuradas y no deberían tenerse en cuenta.
Queda a la decición de cada uno
*/

ALTER TABLE Entrada DROP COLUMN Precio;
/* 
Dado que el precio del entrada ya no es un atributo de la tabla "Entrada" sino que es un atributo de las otras tablas, se elimina la columna "Precio" de la tabla "Entrada".
*/ 