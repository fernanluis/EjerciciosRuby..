class Perro
  def initialize (nombre = "sin nombre", raza = "Sin raza")
    @nombre = nombre
    @raza = raza
  end

  def ladrar
    return "Guau guau"
  end

  def dame_nombre
    return @nombre
  end

  def dame_raza
    return @raza
  end

end

dog = Perro.new("Sansa","Pitbull")
dogDos =Perro.new("Boby","American Stanford")

def dog.hablar
  return "Hola Humano"
end

puts dog.hablar

gets()
