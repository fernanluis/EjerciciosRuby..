# Uno de los secretos de Ruby es que las Clases también son objetos.

class SoyObjetoLoJuro
  @nombre_clase = "SoyObjetoLoJuro" # Recuerda que @nombre_clase es una variable de instancia
# Para acceder al valor de @nombre_clase necesitamos un par de métodos
# Aquí entra un nuevo concepto que son los métodos de clase.
# La particularidad de los métodos de clase (en otros lenguajes conocidos como métodos estáticos)
# es que se mandan a llamar sobre la Clase y no sobre una instancia o un objeto de dicha clase.

  def self.nombre_clase
    @nombre_clase
  end
# Definimos un set
  def self.nombre_clase=(nombre_clase)
    @nombre_clase = nombre_clase
  end
end

SoyObjetoLoJuro.nombre_clase = "Otra cosa"
# A continuación método llamado directamente desde la clase.
puts SoyObjetoLoJuro.nombre_clase
puts ""
pausa = gets
puts "La particularidad que los distinguen, de los métodos que le pertenecen a los objetos es que ANTES de ellos hay una REFERENCIA self.Éste self es el objeto de la clase."
puts ""
pausa = gets
puts "Podemos escribir de otra forma los métodos de clase."

class SoyObjetoLoJuro
  @nombre_clase = "SoyObjetoLoJuro"

 class << self

   def nombre_clase
     @nombre_clase
   end
 # Definimos un set
   def nombre_clase=(nombre_clase)
     @nombre_clase = nombre_clase
   end

 end

end

 SoyObjetoLoJuro.nombre_clase = "Otra cosa"
 # A continuación método llamado directamente desde la clase.
 puts SoyObjetoLoJuro.nombre_clase

puts ""
pausa = gets
puts "Cuándo debo de utilizar o definir métodos de clase. La respuesta es: úsalos cuando la funcionalidad que estas escribiendo no le pertenece a ninguna instancia o ningun objeto."
puts ""
pausa = gets
puts "Un claro ejemplo son los los métodos que se ejecutan sobre el ActiveRecord de Rails."

class User
end

User.find()
User.new().find() # NO tiene caso la línea en cuestión.
# Ésta (find()) funcionalidad de encontrar un usuario sobre la base de datos no le pertenece a ningún objeto
# Porque no tendría caso que crearamos usuario y que ése usuario buscara a otro ususario.
