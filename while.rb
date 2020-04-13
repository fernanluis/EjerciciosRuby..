# Ciclo while y until
# while y until, básicamente nos permiten definir ciclo cuyo final no esta definido
# por un número de repeticiones sino mas bien por la evaluación de una expresión que devuelve true or false.

# A continuación la estructura básica de while imprimiendo un número desde el cero.

i = 0

# while expresion
  # expresión que evalúa a true or false y siempre que evalúe a verdadero el ciclo se va a ejecutar. Encaso de que el ciclo evalúe a false el ciclo dejará de ejecutarse.
  # Instrucciones que se van a ejecutar dentro del ciclo.
# end
while i < 10
  puts i
  i += 1
end

puts "Nuevo ejemplo. Dale enter"
pausa = gets

playList = ["songsOne", "songsTwo", "songsThree", "songsFour"]
playing = true

index_songs = 0
# Si hay canciones en la lista de reproducción y se esta reproduciendo
# playing es igual a true entonces debe de ejecutar las canciones.

while (index_songs < playList.length) && playing # aquí podemos escribir directamente la variable booleana o agregar DOBLE IGUAL A TRUE
  puts "Reproduciendo #{playList[index_songs]}"
  index_songs += 1
  # Si el usuario nos manda cero hacemos stop, sino seguimos reproduciendo.
  print "Coloca 0 para detener la reproducción: "
  respuesta = gets().chomp.to_i

  if respuesta == 0
    playing = false
  end
end

puts "Factorizando el código, dale enter."
pausa = gets
playList = ["songsOne", "songsTwo", "songsThree", "songsFour"]
playing = true

index_songs = 0

while (index_songs < playList.length) && playing
  puts "Reproduciendo #{playList[index_songs]}"
  index_songs += 1
  print "Coloca 0 para detener la reproducción: "
  respuesta = gets().chomp.to_i
  playing = false if respuesta == 0
end

puts "Refactorizando el código, dale enter."
pausa = gets
playList = ["songsOne", "songsTwo", "songsThree", "songsFour"]
playing = true

index_songs = 0

while (index_songs < playList.length) && playing
  puts "Reproduciendo #{playList[index_songs]}"
  index_songs += 1
  print "Coloca 0 para detener la reproducción: "
  respuesta = gets().chomp.to_i
  playing = respuesta != 0
end
