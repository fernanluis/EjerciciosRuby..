puts ""
puts "Las lambdas son un tema que estan estrechamente relacionadas con los proc."
pausa = gets
puts ""
puts "Una lambda es una función anónima, es decir, una función sin nombre."
pausa = gets
puts ""
puts "Para declarar una lambda en Ruby puede usar la palabra reservada lambda. "
puts ""
puts "A continuación, un ejemplo de ello."
pausa = gets
puts ""
# La sintaxis de una lambda es la siguiente.
# Primero la palabra reservada lambda, después un bloque {} que define el cuerpo de la función que se esta declarando.
# ************** lambda { puts "Hola Mundo"}
# Para ejecutar una lambda puedes mandar a llamar al método call sobre el objeto lambda.
(lambda {puts "Hola Mundo"}).call # Así mandamos a llamar la función que estamos definiendo.

puts ""
puts "Para leer mejor, podemos factorizar guardando la lambda dentro de una variable."
pausa = gets
puts ""

miLambda = lambda {puts "Hola Mundo"}
miLambda.call
puts ""
puts "Alternativamente puedes utiizar la sintaxis de flecha para poder declarar una lambda."
pausa = gets
miLambda = ->() {puts "Hola Mundo"} # ->() es lo mismo que utilizar el keyword o la palabra reservada lambda
miLambda.call
puts ""
pausa = gets
puts "Las lambda se comportan igual a un método, por lo que podemos definir argumentos, y éstos argumentos tienen que cumplirse, el orden tiene que ser el mismo. A continuación un ejemplo para demostrarlo."
puts ""
pausa = gets

miLambda = ->(nombre) {puts "Hola #{nombre}"}
miLambda.call("Luis Fernando") # miLambda.call() -> ésto dará error.

puts ""
pausa = gets
puts "Si no le pasamos el nombre como argumento, tendremos un argument error."
puts ""
puts "Qué pasa si obtenemos la clase de ésta lambda? miLambda.class.name"
pausa = gets
puts ""

miLambda = ->(nombre) {puts "Hola #{nombre}"}
puts miLambda.class.name
puts ""
pausa = gets
puts "Es un proc!!"
puts ""
pausa = gets
puts "O_o"
puts ""
pausa = gets
puts "Las lambdas son un objeto de la clase Proc."
puts ""
pausa = gets
puts "Entonces cuál es la diferencia entre una lambda y u proc?"
puts ""
pausa = gets
puts "La respuesta es muy simple. Un proc se comporta como un bloque y una lambda se comporta como un método."
puts ""
pausa = gets
puts "Entonces, cuáles son las diferencias entre le comportamiento de un método y el comportamiento de un bloque?"
puts ""
pausa = gets
puts "Son algunos. Empezando con los argumentos. Los argumentos que se le envían a un bloque pasan a ser nulos sino se les asigna un valor, es decir, son opcionales. En el caso de los métodos, los argumentos que se reciben son obligatorios y sino se los envías tendras un error argument al tratar de ejecutar éste programa."
puts ""
pausa = gets
puts "Por otro lado, viene otra diferencia, incluso un poquito más importante. Cuando hacer return desde un bloque también terminas la ejecución de un método que mandó a llamar el bloque. Mientras que si retornas de un método, una lambda sólo terminas la ejecución del método mismo pero no de quién lo mandó a llamar. Qué significa? Ejemplo a continuación."
puts ""

def test_lambda
  (->(){return "Game Over"}).call()
  puts "Después de la lambda."
end

def test_block
  (Proc.new{return "Game Over"}).call()
  puts "Después del bloque."
end

puts test_lambda
puts test_block
puts ""
pausa = gets
puts "Cuando hacemos return dentro de un bloque (Un proc se comporta como unbloque Proc.new..) también estamos terminando o retornando la ejecución del Padre. Entonces test_block retorna lo que sea que el bloque haya retornado."
puts ""
pausa = gets
puts "Por otro lado, cuando nosotros estamos retornando de un lambda lo que estamos haciendo es retornando un valor de un método. Eso no significa que test_lambda va a terminar y tampoco significa que estamos retornando la ejecución de Game Over. Termina la ejecución del método cuando encuentra return y luego continúa si ejecución."
puts ""
pausa = gets
puts "Qué le pasa al valor que retorna una lambda? Bueno, pues, la podemos asignar a una variable. Porque es exactamente lo mismo, el mismo comportamiento que un método."
puts ""

def test_lambda
  lambdaReturn = (->(){return "Game Over "}).call()
  print lambdaReturn
  puts "Después de la lambda."
end

def test_block
  (Proc.new{return "Game Over"}).call()
  puts "Después del bloque."
end

puts test_lambda
puts test_block

puts ""
pausa = gets
puts "En resumidas palabras, las lambdas son funciones anónimas, métodos que no tienen nombres, son del mismo tipo que un proc, sin embargp, la diferencia entre ambos es que un proc se comporta como un bloque y una lambda se comporta como un método normal."
puts ""
