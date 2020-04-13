numero_uno = gets.chomp.to_i
numero_dos = gets.chomp.to_i

if numero_uno > numero_dos
  puts "#{numero_uno} es mayor que #{numero_dos}"
elsif numero_uno == numero_dos
  puts "Ambos números son iguales"
else
  puts "#{numero_dos} es menor que #{numero_uno}"
end

puts "Número uno: #{numero_uno} y número dos #{numero_dos}"

puts ""

puts "A continuación otra manera de ver el resultado, entendiendo lo expresivo de ruby si se cumple la condición en cuestión, de otra manera no imprimirá nada."
puts ""
puts "#{numero_uno} es mayor que #{numero_dos}" if numero_uno > numero_dos # sólo si es para usar una sola línea de código, en caso de ser mas de una línea de código utiliza if..end
puts ""
puts "Por último un modificador de if es unless"

unless false # unless tiene la característica de ser igual que un if pero a la inversa
  puts "hola mundo"
end

puts ""
puts "O podemos reescribirlo en una sóla línea de código"
puts ""
puts "hola mundo" unless false
puts ""
puts "unless es para cuando tienes una sola condición y un sólo caso."
