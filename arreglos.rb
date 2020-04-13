# Estructura de datos más básica que existe.
# Es simple y sencillamente una especie de caja de almacena distintos valores.
# En el caso de Ruby puede almancenar cualquier tipo de datos.

arreglo = [] # arreglo vacío. Otro ejemplo arreglo = [3, "perro", true]

# Otra manera es utilizando en constructor de la Clase.
arreglo_uno = [3, "perro", true]
arreglo_dos = Array.new(5) # Inicialia un arreglo con5 posiciones pero con todas ellas vacías.

puts arreglo
puts arreglo_uno
puts arreglo_dos

puts arreglo[3]
puts arreglo_uno[2]
puts arreglo_dos[1]

puts arreglo[3] = "Fer"
puts arreglo_uno[2] = false
puts arreglo_dos[1] = true

#Otra forma de inicializar un arreglo es con %w

arreglo_tres = %w[1 2 "string" true]
puts arreglo_tres

puts ""
print "Dale Enter"
pausa = gets
puts "La diferencia entre colocarle %w y no hacerlo es que puedes escribir el arreglo sin comas y separados por espacios."
# Otra forma en la que podemos agregar más elementos a nuestro arreglo es utilizando el operador arreglo_en_cuestión << lo_que_va_de_este_lado_es_lo_que_se_inserta_en_el_arreglo

arreglo_tres << "Hola"

puts arreglo_tres

puts ""
puts "Los arreglos no tienen una dimensión definida, es decir,puedes agregarle cuantos elementos quieras y en el momento que quieras. Tampoco tienen un tipo definido."
puts "En el mismo arreglo puede haber candenas, enteros, booleanos, objetos, etc."
puts "Los indices para encontrar los valores determinados comienzan en cero, de modo que, si usas 1 como índice, te dará el valor en la posición 2 del arreglo en cuestión."
