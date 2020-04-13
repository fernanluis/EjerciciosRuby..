# Recordar la definición de arreglo, que es un contenedor de datos básicamente.
# arreglo = []
# - UNA 1RA. característica de una matriz que diferencía a una matríz de un arreglo es la cantidad dimensiones.
# arreglo = [1,2,3,4,5] aquí los valores estan dentro de un mismo nivel de arreglo.
# Cuando introducimos un arreglo dentro de un arreglo, el nuevo arreglo tiene dos dimensiones.
# ejemplo: arreglo = [1,2,3,4,[1,2,3,4,[1,2,3]]] aquí arreglo de 3 dimensiones.
# - UNA 2DA. característica es que los arreglos internos tienen que ser del mismo tamaño, es decir, tener la misma cantidad de elementos.
# Ejemplo de matriz de 2d arreglo = [[1,2,3],[1,2,3]]
# Las matrices se distinguen porque tienen una serie de aplicaiones mateḿáticas amplias.
# clase dentro de Ruby llamada Matrix => todos los elementos deben ser NÚMEROS. No podemos colocar strings u objetos, etc. Porque entonces rompeías las funcionalidades matemáticas de la matriz.

require 'matrix' # importamos la clase inicialmente, hay que importala para ejecutarla.
matriz = Matrix[[1,2,3],[1,2,3]] # ésta sintaxis convierte y valida que lo que tenemos es una matriz.
puts matriz

puts "Que podemos hacer con una matriz?, podemos por ejemplo iterarla."
pausa = gets

matriz.each do |i|
  puts i
end
puts "Bien!, como verás inicia Arriba a la izquierda, luego yendo de Izquierda a derecha y de Arriba hacia abajo. Así es el comportamiento por default del iterador each. Ahora bien 'each' tiene modificadores en el caso de las matrices, por ejemplo imprimir la diagonal de una matriz. "
puts = gets
require 'matrix'
matrix = matriz = Matrix[[1,2,3],[1,2,3],[1,2,3]]
puts matriz

matriz.each(:diagonal) do |i| # (:diagonal) símbolo para impresión de la diagonal de la matriz en cuestión.
  puts i
end

puts "Ahora bien, imprimiremos los elementos que estan abajo de la diagonal."
puts = gets
require 'matrix'
matrix = matriz = Matrix[[1,2,3],[1,2,3],[1,2,3]]
puts matriz

matriz.each(:strict_lower) do |i| # elementos abajo de la diagonal
  puts i
end

puts "Ahora bien, imprimiremos los elementos que estan arriba de la diagonal."
puts = gets
require 'matrix'
matrix = matriz = Matrix[[1,2,3],[1,2,3],[1,2,3]]
puts matriz

matriz.each(:strict_upper) do |i| # elementos arriba de la diagonal
  puts i
end

puts "También podemos imprimir la diagonal de una matriz que NO es cuadrada."
puts = gets
require 'matrix'
matrix = matriz = Matrix[[1,2,3],[1,2,3]]
puts matriz

matriz.each(:diagonal) do |i| # elementos de la diagonal de una matriz que NO ES CUADRADA.
  puts i
end
puts "Sin embargo, imprimiremos la diagonal de una matriz, cuando ésta sea CUADRADA."
puts = gets
puts "PERO, CÓMO PODEMOS SABER SI UNA MATRIZ ES CUADRADA O NO?"
puts = gets
puts "ENTONCES, PARA ESO UTILIZAMOS EL MÉTODO .diagonal?"
puts = gets
require 'matrix'
matrix = matriz = Matrix[[1,2,3],[1,2,3],[1,2,3]]

puts matriz.diagonal?

puts "Recuerda: una matriz cuadrada es aquella donde los elementos fuera de la diagonal son todos ceros."

puts "Aquí utilizaremos una matrix cuadrada"
puts = gets
require 'matrix'
matrix = matriz = Matrix[[1,0,0],[0,6,0],[0,0,3]]

puts matriz.diagonal?
puts "Dentro de ruby-doc.org hay documentación sobre la clase Matrix para más información."
