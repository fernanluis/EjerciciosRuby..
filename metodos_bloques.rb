# Cómo nuestros métodos pueden recibir bloques.

def hola
  yield #palabra reservada para mandar a llamar el bloque en cuestión: {p "Hola Fer"}
end

hola {puts "Hola Fer"}

puts ""
pausa = gets

def hola
  yield
end

hola do
  puts "Hola Fer"
end

puts ""
pausa = gets
puts "yield es el punto en la definición del método en la que se ejecuta el bloque de código recibido."
puts ""
pausa = gets
puts "Justo ahora tenemos una deficiencia. Que pasa si a hola no le mando ningún bloque? Pues recibiremos un error: no block given"
puts ""
puts "No block given"
puts   ""

def hola
  yield
end

# hola() Lo comentamos para no romper el código.

puts ""
pausa = gets
puts "Para solucionar éste error podemos recurir al método de Ruby: block_given?, el cual hará true si el método recibió un bloque y false sino tenemos ningún bloque."
puts ""
pausa = gets
puts "Entonces podemos condicionarla"

def hola
  yield if block_given?
end

hola()
hola {puts "Hola Fer"}

puts ""
pausa = gets
puts "Ahora podemos ejecutar nuestro método con o sin bloque."

puts ""
pausa = gets
puts "Existe otra manera en la que podemos recibir un bloque en alguno de nuestros métodos y ésto es usando un argumento que inicie con un ampersan &, en el siguiente ejemplo."
puts ""

def hola &block # Aquí (&block) podemos ponerle el nombre que sea.
# al usar éste método bloque &block debemos mandar a llamar el bloque utilizando el método call sobre el objeto que estamos recibiendo.
  block.call if block_given?
end

hola {puts "Hola Mundo!"}

# Algo muy importante que hay que mencionar es que el argumento que recibe el bloque debe de ser el último dentro de la lista de argumentos.
# Las líneas a continuación dara como resultado error.

# def hola &block, nombre
#   block.call if block_given?
# end

# Los argumentos del método tienen que ir siempre antes de la declaración del argumento del bloque.
# Cuando reciben un bloque con la sintaxis del ampersan &block
puts ""
pausa = gets
puts "Argumento nombre antes del &block"

def hola nombre, &block
  block.call if block_given?
end

hola("Fernando"){puts "Hola Mundo"}

puts ""
pausa = gets
puts "Con &block también puedes utilizar block_given?,y de echo tambien puedes utilizar yield."

def hola &block
  yield if block_given?
end

hola {puts "Hola Mundo"}

puts ""
pausa = gets
puts "En otras palabras ésta segunda forma se comporta de la misma manera que la primera con una simple excepción: en éste segundo método el bloque esta almacenado en una varible, la variable bloque en éste caso, por lo que es posible que le envíes el bloque a otro método, lo almacenes, lo guardes,pues todo lo que puedes hacer con una variable. OK?"

puts ""
pausa = gets
puts "Definamos otro método"
puts ""

def hola &block
  otro_hola(&block)
end

def otro_hola &block_two
    puts "Mandando a llamar desde otro_hola"
    block_two.call
end

hola {puts "Hola Mundo"}

puts ""
pausa = gets
puts "Cuándo utilizar yield y cuando & (Ampersan)?"
puts ""
pausa = gets
puts "El ampersan es especialmente útil cuando estas utilizando un patrón blazing initializaion aplicación."
puts ""
pausa = gets
puts "Usa yield por defecto. Ya que sino tienes unabuena razón para almacenar el bloque en una variable preferentemente debes utilizar yield sin el argumento con el ampersan. yield es más rápida."
