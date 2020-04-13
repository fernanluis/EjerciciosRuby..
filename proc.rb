puts ""
puts "Recuerdas que CASI todo era un objeto en Ruby?, lo recuerdas?"
pausa = gets
puts "Bueno, aquí uno de esos que no lo son."
puts ""
pausa = gets
puts "Los proc, los bloques"
puts ""
pausa = gets
puts ":)"
puts ""
pausa = gets
puts "Un bloque no es un objeto, es parte de la sintaxis de ejecución de un método."
puts ""

# bloque = {puts "Nooooope"}

# Lo anterior esta comentado porque daría error en la ejecución. Sintaxis no válida.
pausa = gets
puts "Un bloque sólo puede ser definido cuando se envía un método, porque ÉSA es su función. SIMPLE Y SENCILLAMENTE NO ES UN OBJETO."
puts ""
pausa = gets
puts "A continuación, un nuevo ejemplo."
puts ""

def hola &block
    block.call # BLOQUE NO ES UN OBJETO???
end

hola {puts "Yeeapp"}

puts ""
pausa = gets
puts "block.call  ????? es un objeto block???"
puts ""
pausa = gets
puts "La postura se mantiene. Cuando definimos una variable con un ampersan (&block) para recibir un bloque, NO estamos recibiendo un bloque, estamos recibiendo un proc."
puts ""
pausa = gets
puts "A block le podemos hacer el llamado al método call (block.call) porque block no es un objeto sino un proc. Comprobémoslo con el código a continuación aplicando puts block.class.name"
puts ""

def hola &block
  puts block.class.name
  block.call # BLOQUE NO ES UN OBJETO???
end

hola {puts "Yeeapp"}
puts ""
pausa = gets
puts "Cuál es la diferencia entre un bloque y un proc?"
puts ""
pausa = gets
puts "Los bloques NO son objetos y los proc SI lo son."
puts ""
pausa = gets
puts "Los proc, por lo tanto, pueden ser almacenados en variables y pasados como argumentos."
puts ""
pausa = gets
puts "Los bloques, como no se pueden almacenar en variables, no se pueden intercambiar entre métodos."
puts ""
pausa = gets
puts "Un método puede recibir sólo un bloque mientras que puede recibir múltiples proc. Ejemplo a continuación."
puts ""
pausa = gets

def hola proc1, proc2
  proc1.call
  proc2.call
end

proc1 = Proc.new(){ puts "Hola proc1"}
proc2 = Proc.new(){ puts "Hola proc2"}

hola(proc1, proc2)

puts ""
puts "Cuándo debo de utilizar un bloque y cuando debo de utilizar un proc?"
pausa = gets
puts ""
puts "Por defector debes de utilizar bloques, a menos que necesites algo que sólo puedas enviar con el proc. Por ejemplo, si necesitas almacenar el bloque en una variable, cuando necesites más de un bloque para un métodos, etc..."
puts ""
puts "Porqué debería de utiliar más bloques que proc?. Porque son más rápidos. Recueda que antes mencionamos que yield es más rápido que &"
puts ""
puts "La diferencia, en performance, radica en que cuando usamos el método con ampersan &, se tiene que crear un proc, agarra un bloque y utiizando eśe bloque crea un objeto proc. y eso es loq ue hace más lento a ésta ejecución."
