# Inverso de while es until

# Until es a while lo que unless es a if

numero_magico = 12


print "Adivina el número mágico: "
numero_usuario = gets().chomp.to_i
while numero_usuario != numero_magico
  print "Incorrecto. Adivina otra vez: "
  numero_usuario = gets().chomp.to_i
end

puts "Felicidades!! Adivinaste el número mágico!!"

puts "El ejemplo anterior usa while. Ahora intentaremos algo con Until, el cual dice que,mientras la condición dé falso se ejecuta el código."
numero_magico = 12


print "Adivina el número mágico: "
numero_usuario = gets().chomp.to_i
until numero_usuario == numero_magico
  print "Incorrecto. Adivina otra vez: "
  numero_usuario = gets().chomp.to_i
end

puts "Felicidades!! Nuevamente adivinaste el número mágico!!"
