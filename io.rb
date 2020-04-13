#IO, input output respectivamente
#en ÉSTE contexto: recibir datos e imprimir datos

nombre = "Fer"

puts "hola #{nombre}" # a diferencia de print es que, puts agrega un salto de línea
                      #al final de la cadena.

print "hola #{nombre}" # puts sería igual a utilizar print pero el final ejecutar
                        # un salto de línea

print "hola #{nombre} \n"
print "hola denuevo #{nombre} \n"

print 23 #luego de print o puts pasamos un objeto o una clase. Un número,un cadena, etc
puts 24
print "23 \n"
puts 24

print "String \n"
print String
puts String

nombre = gets #llega la ejecución de gets y la terminal queda esperando a que nosotros ingresemos información.
puts "Hola #{nombre}" #gets hace una pausa para que el usuario ingrese información, gets retorna los datos ingresados por el usuario.

print "Dame tu nombre: "
nombre = gets
puts "hola #{nombre}"
puts "Tu nombre tiene 8 letras porque #{8}, ente caso no es dinámico" #el nº 8 no es dinámico, por ende siempre arrojará eśe resultado al numero de letras.
puts "Tu nombre tiene #{nombre.length} letras" #veamos si cuenta bien las letras
#gets retorna el valor ingresado, pero al imprimir cuenta un salto de línea,
#es decir, si ejecutamos >gets
#y si ingresamos un nombre,por ejemplo: "fer"
#devuelve >:"fer\n", es decir que esta contanto además el salto de línea.

#una opción que corrija el conteo de los números es lo siguiente:
print "Dame tu nombre: "
nombre = gets
nombre = nombre.chomp #toma la variable quitándole el último caracter. pero quitamos el -1 a length
puts "Tu #{nombre} tiene #{nombre.length-1} letras" #pero aquí realiza un salto de línea
puts "Tu #{nombre} tiene #{nombre.length} letras"
