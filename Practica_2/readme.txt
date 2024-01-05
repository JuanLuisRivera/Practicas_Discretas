Considera la siguiente definición de un tipo de dato para expresiones aritméticas:
data EA = Num Int
| Suma EA EA
| Resta EA EA
| Mult EA EA
| Div EA EA
| Mod EA EA
| Pot EA EA deriving Show

Ejercicios:
1) Dada una expresión aritmética, obtén su evaluación.
2) Dadas dos expresiones aritméticas, define una función que devuelva:
  a) EQ cuando ambas expresiones aritméticas se evalúan al mismo valor.
  b) LT cuando la primer expresión sea menor que la segunda.
  c) GT cuando la primer expresión sea mayor que la segunda.
3) Para resolver este ejercicio, borra la instrucción deriving Show de la definición de EA. Define una instancia de Show para el tipo de dato EA, de manera que las expresiones se visualicen de forma infija.
4) Dado un árbol binario, convierte su contenido a una lista utilizando un recorrido en orden.
5) Dado un árbol binario, convierte su contenido a una lista utilizando un recorrido pre-orden.
6) Dado un árbol binario, convierte su contenido a una lista utilizando un recorrido post-orden.
7) Dado un árbol binario, genera el mismo árbol pero reflejado. Es decir, los nodos a la izquierda ahora estarán a la derecha, y viceversa.
8) Dado un árbol binario, calcula el número de elementos que este contiene.
9) Dado un árbol binario de elementos ordenados, agrega un nuevo elemento al árbol asegurando que se mantiene el orden.
10) Dada una lista de elementos ordenables, genera un árbol ordenado que contenga a todos los elementos de la lista original.

Extra: Árboles llave-valor
Un árbol llave-valor es aquel en donde cada nodo contiene 2 elementos: uno llamado “llave” y otro que es
el valor asociado a tal llave. Es importante notar que estos dos no necesariamente son del mismo tipo.
11) Define tu propio tipo de datos KVTree para representar árboles llave-valor.
12) Define la operación insertaKV que dada una llave y un valor, inserte de manera ordenada (ordenando según la llave) un nodo en un árbol. En caso de ya existir en el árbol la llave que se pretende insertar, sustituir el valor que tenía anteriormente la llave. Hint: Si queremos ordenar el árbol según las llaves, ¿qué condición debe cumplir el tipo de las llaves?.
13) Define una operación existeKV que dado un árbol y una llave, decida si tal llave se encuentra presente en el árbol.
