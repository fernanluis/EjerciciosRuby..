user = "Fer"

if user == "Fer"
  puts "Tutor"
else
  puts "Visitante"
end
puts ""

puts (if user == "FeR" then "Tutor" else "Visitante" end) # Una forma de escribir if ythen en una sola línea
puts ""
puts "Muchas veces es mejor tener más de una línea de código si va a ser el código más legible."
puts ""

respuesta = if user == "FEr" then
  "Tutor"
else
  "Visitante"
end

puts respuesta

puts ""
puts "A cotinuación realizamos la sintaxis del operador ternario"
puts ""

puts "La sintaxis del operador ternario es la siguiente:"
puts "Si_condición_verdadero ? entonces_resultado : sino_esto"
puts "if true then algo(entonces_resultado en caso de que la condición se evalúe verdadera) else otra_cosa(sino_esto corresponde al else) end"

puts ""

puts user == "Fer"? "Tutor" : "Visitante"
