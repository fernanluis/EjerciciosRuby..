# Aquí veremos la habilidad de un bloque para recibir argumentos y retornar valores.

class Usuario
  attr_accessor :nombre

  def saludar
    yield(@nombre)
  end

end

fer = Usuario.new()

fer.nombre = "Fernando"

fer.saludar { |nombre| puts "Hola #{nombre}" }
fer.saludar { |nombre| puts "Hello #{nombre}" }

puts ""
pausa = gets
puts "Los argumentos que recibe un bloque se enlisatan dentro de barras verticales y cada uno de los argumentos separados por un coma. |argumento1, argumnto2, ...| "
puts""
puts "Además un bloque puede retornar un valor. Cambiamos un poco la ejecución de nuestro programa."
puts ""

class Usuario
  attr_accessor :nombre

  def saludar_with # El método se puede llamar como quieras, se agregó _with para un nuevo nombre del método, nada más.
    saludo = yield(@nombre)
    puts saludo
  end

end

fer = Usuario.new()

fer.nombre = "Fernando"

fer.saludar_with { |nombre| "Hola #{nombre}" }
fer.saludar_with { |nombre| "Hello #{nombre}" }

puts ""
pausa = gets
puts "El valor que un bloque retorna es el RESULTADO DE LA ÚLTIMA expresión dentro del bloque mismo. A continuación un nuevo cambio en el código."
puts ""

class Usuario
  attr_accessor :nombre

def saludar
    saludo = yield(@nombre)
    puts saludo
  end

end

fer = Usuario.new()

fer.nombre = "Fernando"

fer.saludar do |nombre|
  saludo = "Hola #{nombre}"
  saludo # Valor retornado
end
fer.saludar { |nombre| "Hello #{nombre}" }

puts ""
puts "Algo que no es válido dentro de un bloque es utilizar la palabra reservada return ya que da un error. Básicamente porque return ES EXCLUSIVO DE LOS MÉTODOS y no puede ser usado dentro de un bloque."
puts ""
pausa = gets

class Usuario
  attr_accessor :nombre

def saludar
    saludo = yield(@nombre)
    puts saludo
  end

end

fer = Usuario.new()

fer.nombre = "Fernando"

fer.saludar do |nombre|
  saludo = "Hola #{nombre}"
  return saludo # not valid, no lo toma
end

fer.saludar { |nombre| "Hello #{nombre}" }
