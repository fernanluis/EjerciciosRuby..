# Aquí cubriremos el primero de varios iteradores que tiene Ruby. (each)
# ciclo each, pero el término adecuado es iterador.

calificaciones = %w[9 7 8 6 9 8 4]
puts calificaciones

puts calificaciones
print "#{calificaciones}\n"
puts ""
puts "Dale Enter"
pausa = gets

calificaciones = %w[9 7 8 6 9 8 4]

suma = 0
calificaciones.each do |calificacion| # Para poder iterar sobre cada uno de los elementos del arreglo calificaciones pasamos un iterador.
# En éste caso, nuestro iterador es each, es decir, un metodos sobre el arreglo o el hash. Luego pasamos un bloque de código.
# |calificacion| es una variable que va ir cambiando dependiendo del elemento que vayamos iterando.
  puts "Ahora calificación vale #{calificacion}"
end

pausa = gets
puts "Si quisieramos saber además la posición en la que nos escontramos dentro del arreglo podríamos utilizar el método each_with_index, el cual envía dos argumentos al bloque"
calificaciones.each_with_index do |calificacion, posicion|
  puts "En la posición #{posicion} tenemos la calificación: #{calificacion} "
end
puts ""
puts "Enter"
pausa = gets
suma = 0
calificaciones.each_with_index do |calificacion, posicion|
   suma += calificacion.to_i # Debido al %w los elementos del arreglo son considerados como cadenas, y por ello le aplicamos el método to_i
end
puts "El promedio de tus calificaciones es #{suma.to_f / calificaciones.length}" # Recuerden que para que den valores decimales, al menos, uno de ellos debe ser decimal.
