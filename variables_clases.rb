class Video
  @@type = "video/mp4" # @@type es una variable de clase porque inicia con doble arroba.

  def self.type_desde_clase
    p @@type
  end

  def type_desde_objeto
    p @@type
  end

end

# La característica de éstas variables es que pueden ser usadas desde métodos de la clase o métodos del objeto.

Video.type_desde_clase

Video.new().type_desde_objeto

puts ""
pausa = gets
puts "En ambos casos nos imprime lo mismo. Aquí la primera diferencia entre éstas variables de clase y las de instancia."
puts ""
pausa = gets
puts "Si lo intentamos con variables de instancia veremos resultados inesperados."

class Video
  @type = "video/mp4" # Ahora como variable de instancia

  def self.type_desde_clase
    p @type
  end

  def type_desde_objeto
    p @type
  end

end

Video.type_desde_clase

Video.new().type_desde_objeto

puts ""
pausa = gets
puts "Ejemplo con Herencia"

class Video
  @@de_clase = "Clase woo"
  @de_instancia = "Instancia yeii"

  def self.test
    p @@de_clase
    p @de_instancia
  end

end

class YouTube < Video

  def self.test
    p @@de_clase
    p @de_instancia
  end

end

YouTube.test
Video.test

puts ""
puts "Las variables hijas sólo heredan las variables de clase. Las variables de istancias sólo le pertence a Video."
puts ""
puts "Las variables de instancia sólo le pertenece a la clase en las que son declaradas."
puts ""
puts "Las variables de clases guardan las mismas referencias tanto en el Padre como en el Hijo. Entonces, donde sea que las modifiques se va a ver reflejado en todas las clases que tiene dicha variable."
puts ""
puts "Cuándo utilizar variables de clases? Éstas variables se debe usar cuando quieres almacenar una varible que le pertence a la clase y no al objeto."
puts "Bien, y cuándo utilizar variables de clase, y cuándo variables de instancia? Usa de instancia cuando no quieres que la variable se herede a las clases hijas. Ahora bien,si quieres tener el beneficio de la Herencia, además del beneficio de que puedes acceder a dicha variable de clase desde objetos, desde métodos de objetos y métodos de la clase ENTONCES ahí utiliza una variable de clase. "
