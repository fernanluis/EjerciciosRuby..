# Polimorfismo es el concepto en POO que describe la habilidad que múltiples objetos
# respondan de maneras distintas al mismo mensaje.

# Analogía
# Si le dijéramos a un Cocinero, a un Actor y un Estilista: CORTE!
# Todos reaccionarían de manera distinta a la instrucción CORTE!

# Un mismo mensaje pero diferentes formas de responder a una instrucción.

# 2 conceptos estrechamente relacionados con el Polimorfismo son la Herencia y las Interfaces.

class Video
  def play
    # Not implement
  end
end

 class Vimeo < Video
   def play
     p "Inserta el reproductor de Vimeo."
   end
 end

 class YouTube < Video
   def play
     p "Inserta el reproductor de YouTube."
   end
 end

 videos = [YouTube.new, Vimeo.new, Vimeo.new, YouTube.new, YouTube.new]

 videos.each do |video|
   video.play
 end

puts ""
pausa = gets
puts "En otros lenguajes de programación existe el concepto de Interface para asegurarnos que una clase implemente un método en específico."
puts ""
pausa = gets
puts "En Ruby no existen las interfaces. Porqué?"
puts ""
pausa = gets
puts "En Ruby utilizamos un concepto de nombre DuckTyping, y se llama así porque el concepto hace referencia a la idea de que si algo SUENA COMO PATO, O CAMINA COMO PATO, O LE HACE COMO PATO ENTONCES DEBE SER UN PATO."
puts ""
pausa = gets
puts "Es decir, no importa de que tipo sea el objeto,si tiene los métodos o los atributos que necesitamos trátalo como lo que necesitamos."
puts ""
pausa = gets
puts "En nuestro ejemplo es, SI PUEDE HACER play ES UN VIDEO."
puts ""
pausa = gets
puts "No importa el tipo de datos sino los métodos y los atributos que tiene. Y si el tipo de dato no importa, no necesitamos interfaces o herencia para aplicar Polimorfismo."

class Vimeo
  def play
    p "Inserta el reproductor de Vimeo."
  end
end

class YouTube
  def play
    p "Inserta el reproductor de YouTube."
  end
end

videos = [YouTube.new, Vimeo.new, Vimeo.new, YouTube.new, YouTube.new]

videos.each do |video|
  video.play
end
