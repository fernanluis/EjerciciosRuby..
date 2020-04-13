# Times, upto, downto

# un Iterador es un método que internamente construye un ciclo
# el cual tiene características específicas y nos permite invocar un bloque basado en éstas características dentro de un ciclo.

# Ejemplo: queremos imprimir del 1 - 10

10.times do |i| #times (veces) inicia desde el 0
  puts i # si quisiéramos del 1 al 10, es puts i + 1
end

puts "Antes 10.times do |i| puts i end. Ahora 10.times do |i| puts i + 1 end"

pausa = gets
10.times do |i|
  puts i + 1
end
puts "times: un ńumero definido de veces se va a ejecutar"

puts "Ahora probemos sin variable iteradora."
pausa = gets

10.times do
  puts "Me ejecutaré diéz veces."
end

puts "Ahora probemos upto (hasta)."
pausa = gets

1.upto(10) do |i|
  puts i
end

puts "Ahora probemos upto (hasta) con letras."
pausa = gets

"a".upto("z") do |i|
  puts i
end

puts "Ahora probemos downto (inverso de upto). Similar a for(i=5; i>1; i--). Básicamente vamos de arriba hacia abajo."
pausa = gets

10.downto(1) do |i|
  puts i
end

puts "AHORA BIEN!, CUÁNDO DEBO UTILIZAR each, CUÁNDO times, CUÁNDO upto, Y CUÁNDO downto?"
pausa = gets
puts "La respuesta es ser siempre expresivo y optar por lo que es más legible, por lo que es más claro a la hora de leerlo."
