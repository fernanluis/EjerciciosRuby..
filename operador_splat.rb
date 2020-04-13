def hola_gente(personas)
  personas.each do |persona|
    puts "Hola #{persona}"
  end
end

hola_gente(["Luis", "Fernando"])

puts ""
puts "No existe un método sobre el string oun número, por lo que si los valores ingresados como argumentos pertenecen a un strgin o a un número, el métdo fallará."
puts "Dale enter."
pausa = gets
puts "Código refactorizado."

def hola_gente(personas)
  personas.each {|persona| puts "Hola #{persona}"}
end

puts "Observa el código de la línea ejecutada. Es muy raro que vayas a ver ésta sintaxis dentro del lenguaje de Ruby, en el que veas un método recibiendo un arreglo."

hola_gente(["Bonita", "Ana Clara"])

puts ""
pausa = gets
puts "Recuerda que en Ruby la expresividad y la sintaxis también importa."
puts "Refactoricemos un poquito. Usando el operador splat."

def hola_gente(*personas) #Operador splat
  # personas es un arreglo que contiene todos los argumentos que se le pasen al método.
  personas.each {|persona| puts "Hola #{persona}"}
end

puts "Vean el resultado de cada sintaxis a continuación."

hola_gente "Bonita" , "Prince"
hola_gente "Popis"
hola_gente 23
hola_gente (["Mamá","Papá"]) #Si ["Mamá","Papá"] pertenecieran al arreglo padres = ["Mamá","Papá"], padres se interpreta como un argumento del tipo arreglo.
hola_gente "Fernando", "Bonita", "Ana Clara", 33, {nombre: "luis"}

puts ""
pausa = gets
puts "Qué esta pasando?. EL operador splat (*) dice: Ok!, a éste método puedes pasarle cualquier cantidad de argumentos y yo los voy a recibir como un arreglo. Entonces, adentro del método 'personas' es un arreglo que contiene todos los argumentos que se le pasaron a un método. El splat operator puede combinarse con otros argumentos  que sean fijos, por ende, primero el argumento fijo y luego le sigue el operador splat ya que éste último asigna cualquier cantidad de arguementos asignados. Y se concatena"

def hola_gente(mensaje,*personas) #Operador splat
  # personas es un arreglo que contiene todos los argumentos que se le pasen al método.
  personas.each {|persona| puts "#{mensaje} #{persona}"}
end

hola_gente "Hey hola!,", "a todos."
puts ""
pausa = gets
puts "Cómo convertimos a un arreglo a una lista de argumentos? Utilizando la misma sintaxis!, el * convierte a un array en una lista de parámetros."
puts ""
def hola_gente(mensaje,*personas) #Operador splat
  # personas es un arreglo que contiene todos los argumentos que se le pasen al método.
  personas.each {|persona| puts "#{mensaje} #{persona}"}
end
padres = ["Mamá", "Papá"]
hola_gente "Hey, hola!," , *padres
