# Método initialize
# En otros lenguajes el comportamiento de initialize es similiar o se lo denomina método Constructor en otros lenguajes de programación.
# El método constructor en POO es un concepto general que todos los lenguajes que implementan POO lo tienen.
# Tiene la característica de que ése método que se ejecuta cuando creamos un objeto de una clase y suele utilizarse para inicializar valores que el objeto tendrá.
# Poreso de llama initialize.

class Video
  attr_accessor :minutes, :title # Atributos definidos.

  def initialize (title) # Es un método común y corriente y lo único que lo hace especial es el nombre.
                 # Éste método, como todos los otros puede recibir argumentos.
    self.title = title

  end

  def play # Método definido dentro de una clase.
  end

  def pause # Método definido dentro de una clase.
  end

  def stop # Método definido dentro de una clase.
  end

end

variable_video_uno = Video.new("Objetos y clases") # Cambiamos la definición del método.
                                                   # Ahora,cuando mandemos a llamar .new tengo que pasar los argumentos que initialize recibe.
puts variable_video_uno.title

puts ""
pause = gets
puts "Aquí mandamos a llamar al método initialize."
puts ""

class Video
  attr_accessor :minutes, :title # Atributos definidos.

  def initialize (title) # Es un método común y corriente y lo único que lo hace especial es el nombre.
                 # Éste método, como todos los otros puede recibir argumentos.
    self.title = title
    puts "Soy initialize"
  end

  def play # Método definido dentro de una clase.
  end

  def pause # Método definido dentro de una clase.
  end

  def stop # Método definido dentro de una clase.
  end

end

variable_video_uno = Video.new("Objetos y clases") # Cambiamos la definición del método.
                                                   # Ahora,cuando mandemos a llamar .new tengo que pasar los argumentos que initialize recibe.
puts ""
puts "En la definición del método initialize tenemos el lugar adecuado para hacer cosas que inicalicen el objeto."
puts ""
puts "Sin embargo, una buena práctica de programación es no dejarle mucho trabajo al método constructor porque éso haría que sea más dificil de probar el comportamiento de nuestro método."
puts ""
puts "No debemos de abusar del constructor para que haga mucho trabajo."

puts ""
pause = gets
puts "Si en éste contexto mandamos a llamar return sobre el método initialize, ésto será ignorado por el metodo .new Es decir, que nosotros retornemos hola no significa que la línea de instancia del objeto vaya a retornar hola. La instancia del objeto va a seguir retornando el objeto que nosotros queríamos."
puts "Hay formas de simular ése comportamiento pero es un poquito más avanzado para más adelante."
puts ""

class Video
  attr_accessor :minutes, :title # Atributos definidos.

  def initialize (title) # Es un método común y corriente y lo único que lo hace especial es el nombre.
                 # Éste método, como todos los otros puede recibir argumentos.
    self.title = title
    return "HOlA"
  end

  def play # Método definido dentro de una clase.
  end

  def pause # Método definido dentro de una clase.
  end

  def stop # Método definido dentro de una clase.
  end

end

variable_video_uno = Video.new("Objetos y clases") # Cambiamos la definición del método.
