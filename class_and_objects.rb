# Ruby es uno de los lenguajes más orientados a objetos.

# Ruby es un lenguaje orientado a objetos.
# A continuación algunos conceptos que tienen que ver con la programación orientada a objetos. OOP

# Objetos y Clases. POO

# Las Clases definen el comportamientos que los objetos que usaremos en nuestor programa tendrán.
# Y es partir de ésta Clase que nosotros creamos nuestro objetos.
# Ejemplo Restaurantes y platillos del menú. En éste contexto las Clases representan la receta del platillo y cada platillo un objeto.

# Una CLASE se encarga de definir atributos, métodos, campos e incluso eventos.

# En Ruby definimos clases iniciando con Mayúsculas y en CamelCase. Diferente a cómo definimos variables.

class Video
  attr_accessor :minutes, :title # Atributos definidos.
  def play # Método definido dentro de una clase.
  end

  def pause # Método definido dentro de una clase.
  end

  def stop # Método definido dentro de una clase.
  end

end

# Cuando creamos un objeto de una clase,
# también podemos decir qu estamos creando una instancia de una clase
# o instanciando un nuevo objeto.

Video.new # Aquí creamos un nuevo objeto con el método .new
variable_video_uno = Video.new # variable_video es un ubjeto de la clase Video.
# variable_video puede ejecutar los métodos play pause stop y modificar los atributos sin modificar los los de otros objetos.
variable_video_uno.title = "Objetos y clases"

variable_video_dos = Video.new
variable_video_dos.title = "Atributos"

puts variable_video_uno.title
puts variable_video_dos.title

puts ""
pausa = gets
puts "En POO cuidamos mucho el estado de las cosas o de los objetos. Es por ello que utilizamos éste paradigma y cada uno de los objetos guarda un estado propio para sus atributos."
