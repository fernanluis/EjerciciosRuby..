calificaciones = %w[10 9 7 88 66 9 8 4 10]

# Dado que algunos operadores aritméticos en Ruby son en realidad métodos,
# también se pueden aplicar a muchos d elos objetos de Ruby.
# En éste caso,también a los arreglos.

# Cuando nosotros multiplicamos un arreglo, lo que hace es duplicarlo, triplicarlos, según corresponda.

puts calificaciones * 2  #Duplica el arreglo, podría ser 3, y triplicaría
puts calificaciones * " - " # Mostrar todas nuestras calificaciones separadas por un guión.
# Cuando multiplicamos por una cadena, lo que se hace en realidad es un join()
# join() convierte un arreglo en una cadena.
puts "join() convierte un arreglo en una cadena"
puts calificaciones.join("")
puts calificaciones.join()
puts calificaciones.join("-")
puts calificaciones.join(",")
puts calificaciones.join(" - - ")
puts calificaciones.join(",").class.name # con class.name imprimimos el tipo de datos
puts "join() también se puede escribir utilizando el multiplicador sobre el -> arreglo*','"
puts ""
puts "A continuación, ordenemos las calificaciones de mayor a menor"
puts "Enter"
pausa = gets
puts calificaciones.sort
calificaciones = [9, 7, 8, 6, 9, 8, 4]
puts ""
puts "Usando .sort y .sort.reverse. Dale ENTER"
pausa = gets
puts calificaciones.sort # Arreglo ordenado del menor al mayor, pero los ordena como si fueran candenas por el %w
puts calificaciones.sort.reverse # Ordenarlos al revés con .reverse.
puts ""
puts "Buscando un valor específico de calificaciones, por ejemplo 9 usando .include?(9)"
pausa = gets
puts calificaciones.include?(9) # Buscando un valor específico si es que existe.
puts ""
puts "El valor 1 existe?, dale enter"
pausa = gets
puts calificaciones.include?(1)
puts ""
puts "Cuál es el primer valor?, usa .first, dale enter"
pausa = gets
puts calificaciones.first
puts ""
puts "Cuál es el último valor?, usa .last, dale enter"
pausa = gets
puts calificaciones.last
puts ""
puts "Devuelve el mismo arreglo sin elementos repetidos con uniq, dale enter"
pausa = gets
puts calificaciones.uniq
puts ""
puts "Ahora, obtendremos un elemento random con sample, quien devuelve uno de los elementos del arreglo de manera aleatoria, dale enter"
pausa = gets
puts calificaciones.sample
