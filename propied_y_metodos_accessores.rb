# Propiedades y métodos accesores.

# Las Propiedades de un objeto son valores que estan asociados con precisamente dicho objeto.

# De manera simplista podemos decir que un objeto es una colección de Propiedades y de métodos.

# En Ruby, generalmente,las propiedades van a ser llamadas variables de instancia.

# Las variables de instancia son precisamente identificadores que le pertenecen al objeto y no a la clase.

# Poreso son de instancia.

# En código, éstas variables se distinguen por iniciar su nombre con un arroba @

puts ""
puts "A continuación nos debería de dar un error y ya veremos porqué. Comentamos ésta sección del código."
pausa = gets

# class Tutor
#   def initialize(name)
#     @nombre = name
#   end
# end

# fer = Tutor.new("Fernando")
# luis = Tutor.new("Luis")

# puts fer.nombre
# puts luis.nombre

puts ""
pausa = gets
puts "El error del programa radica en que las variables de instancia no pueden ser modificadas u observadas desde fuera del objeto."
puts ""
puts "Es decir, no podemos leer ni acceder a su valor, a menos que sea desde dentro del objeto. Én éste contexto, que nos referimos desde dentro del objeto, se refiere desde dentro de la definición de las clase."

pausa = gets
class Tutor
  def initialize(name)
    @nombre = name
    puts @nombre
  end
end

fer = Tutor.new("Fernando")
luis = Tutor.new("Luis")

puts ""
pausa = gets
puts "Qué tienen de especial éstas variables? La respuesta es que puedes acceder a ellas desde cualquier parte del objeto. No importa si la declaras en un método y luego la lees en otro."
puts "Veamos otro ejemplo."

class Tutor
  def initialize(name)
    @nombre = name
  end

  def say_my_name
    puts @nombre
  end
end

fer = Tutor.new("Fernando")
luis = Tutor.new("Luis")

fer.say_my_name
luis.say_my_name

puts ""
puts "Entonces, las variables de instancia se pueden acceder desde cualquier parte dentro del objeto."
puts "Ahora bien,si las variables de instancia no pueden ser alteradas ni leídas desde el exterior, cómo modificamos la propiedad de un objeto? o Cómo leemos ésa misma propiedad?"
puts ""
puts "Para ello utilizamos métodos accessores."
puts ""
puts "Éstos métodos definien cómo podemos cambiar, asignar o modificar una propiedad y al mismo tiempo cómo leera desde el objeto."
puts ""
puts "Creemos nuestro propios métodos accessores como ejemplo."
puts ""
pausa = gets
puts ""
puts "Recordemos que los métodos accessores son de 2 tipos. get y set"
puts ""
puts "los geters sirven para leer propiedades"
puts ""
puts "los setters sirven para asignar o modificar una propiedad."


class Tutor
  def initialize(name)
    @nombre = name
  end

  def get_nombre # obtener
    @nombre
  end

  def set_nombre (nombre) # asignar o modificar. Colocar.
    @nombre = nombre
  end

end

fer = Tutor.new("Fernando")
luis = Tutor.new("Luis")

puts fer.get_nombre
fer.set_nombre("Luis Fernando")
puts fer.get_nombre

puts ""
pausa = gets
puts "Sin embargo los métodos get y set no es código que verás en Ruby."
puts ""
pausa = gets
puts "En Ruby los métodos accessores no usan las palabras get o set como prefijo del nombre del método como es convención en otros lenguajes como Java."
puts ""
pausa = gets
puts "Iniciar los nombre de los métodos con get o set es una convención en muchos lenguajes pero en Ruby no se hacen así."
puts ""
pausa = gets
puts "Lo que diferencía a Ruby es el caracter igual =, entoces en Ruby los getter se ven así: def nombre.. (iguales al nombre de la propiedad) y los setters tienen el mismo nombre de la propiedad y un igual."

class Tutor
  def initialize(name)
    @nombre = name
  end

  def nombre # obtener
    @nombre
  end

  def nombre=(nombre) # asignar o modificar. Colocar.
    @nombre = nombre
  end

end

fer = Tutor.new("Fernando")
luis = Tutor.new("Luis")

puts fer.nombre
fer.nombre="FernanLuis" # Lo que se vé aquí es la declaración y ejecución de un método: nombre = , con el argumento"FernanLuis que se asigna al @nombre = nombre en la definición del método set correspondiente.
puts fer.nombre

puts "Ruby tiene algunos métodos que nos ayudarán a no tener que escribir ésta parte de código de get y set"
pausa = gets
puts "El primero de ellos es attr_accessor :nombre. El cual define tanto el get como el set."
puts ""
pausa = gets
puts "Después viene attr_reader :nombre. El cual define sólo el get."
puts ""
pausa = gets
puts "Después viene attr_writer :nombre. El cual define sólo el set."
puts ""
pausa = gets
puts "Entonces, factorizamos."

class Tutor
  attr_accessor :nombre
  def initialize(name)
    @nombre = name
  end
end

fer = Tutor.new("Fernando")
luis = Tutor.new("Luis")

puts fer.nombre
fer.nombre="FernanLuis" # Lo que se vé aquí es la declaración y ejecución de un método: nombre = , con el argumento"FernanLuis que se asigna al @nombre = nombre en la definición del método set correspondiente.
puts fer.nombre
