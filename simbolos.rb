# Es una cadena inmutable.
# No puedes modificar la cadena en tiempo de ejecución.

cadena = "fernando"
cadena.capitalize!
puts cadena
puts ""
puts "En el ejemplo anterior utilizamos una cadena donde le aplicamos un método capitalize! porque es inmutable.Recuerdalo."
puts "Los símbolos no tienen el método capitalize!"
pausa = gets

cadena = :fernando # Recuerda que los símbolos son inmutables. capitalize! no puede utilizarse

puts ""
puts "Cuaáles son los beneficios de tener una cadena inmutable?"
puts "El principal beneficio de utilizar un símbolo esta en el performance"
pausa = gets

puts cadena = "Fernando"
puts cadena2 = "Fernando"
puts simbolo = :Fernando
puts simbolo2 = :Fernando
puts ""
pausa = gets
puts "Imprimimos el object_id de cada uno de estos elementos."
puts ""
puts cadena.object_id
puts cadena2.object_id
puts simbolo.object_id
puts simbolo2.object_id
puts "Si te das cuenta,las dos cadenas tienen el mismo valor, y los dos símbolos también tienen el mismo valor"
puts "Pero los símbolos comparten el mismo object_id aunque estén dentro de variables distintas porque el símbolo es el mismo. No así las cadenas."
puts "Ruby recicla los símbolos en caso de contener el mismo símbolo. PERO RECUERDA QUE LOS SÍMBOLOS DEBEN SER INMUTABLES."
puts "Todos los símbolos iguales utilizan el mismo objecto."
puts "Aquí se entiende el performance, ya que se reciclan. No se duplican dos objetos con el mismo valor en caso de considerar los símbolos. En caso de comparar cadenas, en cuanto a los string, Ruby compara letra por letra. Cuando comparamos dos símbolos la comparación es mucho más rápida. Y la razón es porque, en lugar de estar comparando letra por letra Ruby puede comparar únicamente comparar los object_id y pues, si son iguales,ambos símbolosson iguales."
puts ""
puts "Cuándo debo de utilizar símbolos?"
puts ""
pausa = gets
puts "Cuando no necesito modificar el string."
pausa = gets
puts "Cuando no necesito los métodos del string. Los símbolos no tienen las operaciones que sí útilizan los strings."
puts ""
pausa = gets
puts "Los símbolos suelen ser muy útiles como nombres, nombres de cosas, como los ejempos con hashes cuando utilizamos las claves."
