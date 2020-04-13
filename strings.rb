# encoding: UTF-8

#las cadenas son una serie de caracteres, letras o palabras, en programació todo lo que compone
#a un string es un caracter que puede ser un espacio, una letra o un signo.
#serie de caracteres
puts "Hola mundo!, son un string" #entre dobleso comillas simples.

#concatenación
nombre = "FernanLuis"
puts "hola " + nombre

#interpolación, dentro de un strig colocamos un gato # y llaves {} y lo que va dentro de las
#llaves ya no cuenta como parte del string, y se evalúa como código de Ruby.

puts "hola chamquín #{ 3 + 3 }"
puts "hola Chamacquines #{ nombre.upcase}" #Método para convertiren mayúsculas.
                                           #Aquí podemos notar que tanto las cadenas como los
                                           #números son objetos en Ruby.

#un truco para saber todas las operaciones que se pueden ejecutar sobre un string.
#es agarrar cualquier string
puts "".methods

puts "FernanLuis".upcase #upcase nos conviente a mayúsculas a nuestro string
puts "FERNANLUIS".downcase
puts "FernanLuis".capitalize #la primera enmayúscuas y todas las demás en minúsculas.

puts "León" # acentos con método de codificación que tienen nuestros caracteres
            # encoding: UTF-8

#caracteres no imprimibles o los que tienen el backlash \ (la barra invertida)

puts "hola Fer \n\n\n " #saltos de línea

puts "hola Fer \n\n\n\t Que tal?" #tabulación
#ojo!!!con comillas simples los caracteres\n\... se conservan, pero respecto de las
#dobles comillas se interpretan.

puts "2".to_i #convertilo a número o to_f (cadenas a números y viseversa.)
puts "2".to_f
puts 1.to_s
