def hola
  yield("Luis Fernando") # Argumento "Luis Fernando"
end

hola do |nombre|
  puts "Hola #{nombre}"
end

puts nombre
