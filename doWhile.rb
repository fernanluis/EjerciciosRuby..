# do while
# Lo que la sintaxis begin en while es que nos asegura que al menos una vez se va a ejecutar el ciclo en cuestión.
numero = -1


begin
  numero = gets.chomp.to_i
end while numero < 0

numero = 2


begin
  numero = gets.chomp.to_i
end until numero < 0
