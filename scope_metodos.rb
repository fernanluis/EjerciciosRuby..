# Los métodos de un objeto en Ruby se pueden clasificar en tres.

# Public, Private y Protected. Hablámos de los métodos de una clase.

# Recuerda el scope de una variable: es decir, desde dónde uno puede mandar a llamar un método o una variable.

# Public se pueden mandar a llamar desde cualquier lugar. Y por defecto, todos los métodos que creamos en una clase son públicos.

# Private pueden llamarse ÚNICAMENTE desde dentro de la clase.
# A diferencia de otros lenguajes, en Ruby una Clase Hija sí hereda los métodos privados del Padre.
# Por ellos las clases Hijas pueden mandar a llamar Private, Public y Protected.
# Private no puede ser llamada desde fuera de la clase.

# Protected puede llamarse desde otras clases siempre y cuando sean del mismo tipo.

class Humano

  def initialize
    self.publico
  end

  def publico
    puts "Soy público"
  end

end

class Tutor < Humano
end

Humano.new()
Tutor.new().publico

puts ""
pausa = gets
puts "Porqué se mandó a llamar dos veces el método del Tutor?"
puts ""
pausa = gets
puts "La respuesta es que, como no sobreescribimos el constructor, se esta mandando a llamar el constructor initialize. Y también se manda a llamar publico. Por eso se manda a llamar tres veces."
puts ""
pausa = gets
puts "Ahora veremos Private"

class Humano

  def initialize
    # self.publico lo cambiamos a privado SIN SELF
    privado
  end

  def publico
    puts "Soy público."
  end

  private # La sintaxis es: una vez la palabra reservada private o protected, todos los métodos por debajo son privados.
  def privado
    puts "Soy privado."
  end

end

class Tutor < Humano
  def initialize
    # self.publico lo comentamos SIN self, para dar ejemplo de que las clases Hijas también puede mandar a llamar privados.
    privado
  end
end

# Humano.new().privado Así no podemos mandar a llamar un método privado ya que estamos fuera de la clase.
Humano.new()
Tutor.new

puts ""
pausa = gets
puts "Ahora veremos Protected"

class Humano

  def initialize
   # privado Comentamos para no contaminar protected
  end

  def publico
    puts "Soy público."
  end

  # private lo comentamos para no contaminar el ejemplo de protected.
  #  def privado
  #   puts "Soy privado."
  #  end

  protected # No son tan comunes. Todo lo que esta debajo de private es privado HASTA que se encuentra algún nuevo cambio en la definición del alcance. Ahora pasan a ser protegidos, ya no privados.
    def protegido
      puts "Soy protegido"
    end

end

class Tutor < Humano

  def initialize
    # protegido Lo comentamos para instanciar un Humano.
    @inner = Humano.new
  end

  def llamar_protegido
    @inner.protegido
  end

end

class Alien

  def initialize
    @inner = Humano.new
  end

  def llamar_protegido
    @inner.protegido
  end

end

Tutor.new().llamar_protegido
# Alien.new().llamar_protegido Lo comentamos porque dará error ya que no es un mismo tipo de clase.




tutor = Tutor.new()
alien = Alien.new()

puts tutor.is_a?(Humano)
puts alien.is_a?(Humano)
