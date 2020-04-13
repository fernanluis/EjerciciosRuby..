# Quiero imprimir los números del 1 al 10

numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

numeros.each do |numero|
  puts numero
end

# Cambiemos la sintaxis del arreglos
puts ""
puts "El primer ejemplo dimos los valores 1,2,3,4..., ahora damos un rango 1..10 y vemos el mismo efecto."
pausa = gets

numeros = (1..10)

numeros.each do |numero|
  puts numero
end

puts ""
puts "Aquí refactorizamos un poco."
pausa = gets

(1..10).each do |numero|
  puts numero
end

puts ""
puts "Aquí nos movemos dentro del rango por de 2 en 2 o como tu quiras con el método .step()"
pausa = gets
(1..10).step(2).each do |numero|
  puts numero
end

# (1..10) éste es un rango y es una instancia de la clase range de Ruby.
# Lo interesante de los rangos es que también funcionan con cadenas.

puts ""
puts "Aquí utilizamos strings, y vamos de la 'a'..'z'"
pausa = gets
('a'..'z').each do |numero|
  print numero + " , "
end

# Los rangos comparten mucho de los métodos de que los arreglos tienen.
puts ""
puts "Los rangos no son arreglos!!"
puts "A continuación daremos el mínimo y el máximo de cada arrelgo respectivamente. Dale ENTER"
pausa = gets

puts "Dale enter luego de cada impresión antes de finalizar con el programa."
puts "El primer valor corresponde al min rango (1..10)"
puts (1..10).min
puts "El segundo valor corresponde al max rango (1..10)"
pausa = gets
puts (1..10).max
puts "El tercer valor corresponde al min rango ('a'..'z')"
pausa = gets
puts ('a'..'z').min
puts "El tercer valor corresponde al max rango ('a'..'z')"
pausa = gets
puts ('a'..'z').max
puts "A continuación algunas otras operaciones con rangos. Convertimos el rango en un arreglo con to_a y luego lo revertimos con .reverse"
pausa = gets
puts ('a'..'z').to_a.reverse
puts "Si al rango no lo convertimos en una arrelgo no veremos el mismo resultado entre ma..md., Así sólo veremos el rango."
pausa = gets
puts "Ahora lo convertimos en arreglo para ver todos los valores del rango."
puts ('ma'..'md')
pausa = gets
puts ('ma'..'md').to_a
puts "Te diste cuenta que los rangos no almacenan todos los elementos? Si es así genial!!"
puts "PORQUE LO QUE EL RANGO ALMANCENA ES EL PRIMER Y ÚLTIMO ELEMENTO DEL RANGO."
puts "CUANDO LO CONVERTIMOS A ARREGLO O LO ITERAMOS VÍA MÉTODO EACH ES CUANDO EN VERDAD SE GENERAR TODOS LOS ELEMENTOS DEL RANGO."

puts "NOS VEMOS EN EL SIGUIENTE EJERCICIO!, ADIÓS!!"
