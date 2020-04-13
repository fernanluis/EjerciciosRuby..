puts "Sentencia de Case. Case tiene una equivalencia en otros lenguajes que se llama switch."
puts "Dale Enter"
pausa = gets
puts "En el caso de Ruby se llama Case."
puts ""

# Primero utilizaremos if else
print "Dame tu calificación del 1 - 9: "

nota = gets.chomp.to_i

puts "La calificación ingresada es: #{nota}"

puts ""

puts "Dale click en Enter para saber el resultado de cómo calificas:"
pausa = gets

if nota == 9
  puts "Lograse una nota Sobresaliente!"
elsif nota == 8
  puts "Lograste una muy buena nota!"
elsif nota == 7
  puts "Tu nota es buena, pero podrías hacerlo mejor!"
elsif nota == 6
  puts "Has aprobado, esmérate para ser mejor."
else
  puts "Lo siento, o has indicado un valor incorrecto o sólo no has superado el examen! Vuelve a intentarlo, esmérate!"
end

puts "A continuación toca cualquier tecla y/o sólo dale Enter."
pausa = gets

# Ahora refatorizamos utilizando CASE
puts ""
puts "Ahora refactorizamos el código. No es algo que puedas verlo impreso en pantalla, sólo verás los mismos resultados de una u otra manera."

print "Ingresa nuevamente tu nota. Recuerda sólo un valor del 1 al 9: "
nota = gets.chomp.to_i
puts "La calificación ingresada es: #{nota}"
puts "Dale nuevamente Enter para descubrir como has calificado:"
pausa = gets

case nota

when 9 # when condition
  puts "Lograse una nota Sobresaliente!"
when 8
  puts "Lograste una muy buena nota!"
when 7
  puts "Tu nota es buena, pero podrías hacerlo mejor!"
when 6
  puts "Has aprobado, esmérate para ser mejor."
else
  puts "Lo siento, o has indicado un valor incorrecto o sólo no has superado el examen! Vuelve a intentarlo, esmérate!"
end

# Nueva forma de refactorizar, suprimiendo puts en cada when e imprimiendo el resultado directamente.
puts ""
puts "Nuevamente dale click en cualquier tecla y/o sólo dale Enter."
pausa = gets
puts "Nueva refactorización. Recuerda que no verás el código. Sólo has la prueba del sistema como tal."
puts "click en cualquier tecla o Enter nuevamente"
pausa = gets

print "Ingresa nuevamente tu nota. Recuerda sólo un valor del 1 al 9: "
nota = gets.chomp.to_i
puts "La calificación ingresada es: #{nota}"
puts "Dale nuevamente Enter para descubrir como has calificado:"
pausa = gets

puts case nota

when 9 # when condition, al condicional when cual le podemos pasar distintos valores con los cuales va a comparar con las notas.
  "Lograse una nota Sobresaliente!" # Algo a tener en cuenta es que las comparaciones de los valores asignados a when con los valores originales de comparación, es decir, nota, se hacen con un operador que se vé masomenos así: ===
when 8 # === operador que en realidad es un método comparador entre los valores que le pasamos a when y el original de comparación de nota.
  "Lograste una muy buena nota!"
when 7 # Muchos de los operadores de Ruby son métodos, como lo es ===
  "Tu nota es buena, pero podrías hacerlo mejor!"
when 6
  "Has aprobado, esmérate para ser mejor."
else
  "Lo siento, o has indicado un valor incorrecto o sólo no has superado el examen! Vuelve a intentarlo, esmérate!"
end

# Recuerda que las compraciones entre los valores pasados a when y los valores originales de compración nota, se realizan vía el operador o método === (triple igual) en lugar del operador == (doble igual)
# Para el caso de las cadenas, los números detrás de escena, ya en la implementación ambos operaores iguales, triples y dobles funcionan igual.
