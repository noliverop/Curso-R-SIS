# Curso Capacitación en R Superintendencia de Salud
# Tarea 1
# Plazo de entrega: 23 de mayo 
# Nombre:


# Ejercicio 1: Vectores

# 1. Genere un vector con los siguientes 4 elementos (llame a este objeto como usted desee): 
# 20340, 1000, 2, 300. Imprima el objeto.




# 2. Asuma que el vector creado en el punto 1 consiste en valores de ropa en dólares.
# Genere otro vector (llámelo como usted quiera) que refleje los mismos valores
# pero ahora en pesos chilenos. Utilice el siguiente 
# tipo de cambio: 1 dólar = 939.42 pesos chilenos. Imprima el objeto.




# 3. Asuma que olvidó agregar un quinto valor y sexto valor al vector creado
# en el punto 2. Genere un nuevo vector (llámelo como usted quiera) basado en
# el vector del punto 2 donde se agreguen los valores 5000 y 700. Imprima este objeto.




# 4. Imprima el largo del vector generado en el punto 3.



# 5. Lea la documentación sobre la función round() y utilícela para crear 
# un nuevo vector (llámelo como usted quiera) basado en el creado en el punto 3
# pero que todos sus valores estén redondeados a solamente 1 decimal. Imprima este nuevo objeto. 




# Ejercicio 2: Vectores e indexación

# Cree los siguientes vectores de la siguiente manera:

artistas_chilenos <- c("Los Jaivas", "Los Tres", "Los Prisioneros", "La Ley",
                       "Los Prisioneros", "La Ley", "Los Bunkers")
artistas_argentinos <- c("Soda Stereo", "Charly García", "Fito Páez", "Sandro")

# 1.- Vea la documentación de la función unique(). ¿Para qué sirve esta 
# función? Escriba su respuesta en forma de comentario en su script.



# 2.- Como puede ver, en el vector de artistas chilenos existen artistas 
# repetidos. Sobreescriba este vector eliminando los artistas repetidos.
# Utilice indexación y el operador `-`. Imprima el vector de artistas chilenos.


# 3.- Ahora que no debiese tener artistas repetidos en ninguno de los dos 
# vectores, una los vectores en uno solo y llámelo
# `artistas_chilenos_argentinos`. Imprima el objeto.




# Considere el siguiente vector que contiene artistas favoritos de cualquier nacionalidad:

artistas_favoritos <- c("Charly García", "Pink Floyd", "Los Jaivas", 
                        "The Beatles","Soda Stereo", "Hozier")

# 4.- Genere un nuevo objeto llamado `artistas_favoritos_chilenos_argentinos` que
# sólo contenga los artistas favoritos que sean chilenos o argentinos.
# Hint: Use indexación y un operador de vectores visto en la sesión 2. Imprima este objeto.



# Ejercicio 3: Verdadero o Falso

# Responda Verdadero o Falso como comentario en su script.

# 1. Las licencias para usar el lenguaje R se compran a la empresa neozelandesa
# que construyó este lenguaje.


# 2. Si se desea comprobar que un número, caracter, o vector es distinto a otro
# dato se puede utilizar el operador lógico !==.


# 3. Una variable lógica TRUE asociada mediante el operador O (también
# llamado disyunción) a otra variable lógica FALSE resulta en un valor TRUE.


# 4. Si se corre la función class() con el argumento "3", es decir, class("3"),
# la consola arrojará `numeric`. 
