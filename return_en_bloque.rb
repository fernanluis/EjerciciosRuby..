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
  return # not valid, no lo toma
end

fer.saludar { |nombre| "Hello #{nombre}" }
