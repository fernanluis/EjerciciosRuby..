# keyword argument

def hola(nombre, edad) # Lo tradicional es utilizar los nombres de parámetros nombre y edad.
                       #Ésto esta bien, pero tiene la deficiencia de que si nosotros ofuscamos
                       #éste código, digamos que no tenemos accedo a la definición del método y
                       #no sabremos lo que el método o los argumentos definen precisamente.
                       #Es decir, no sabes a que se refieren cada uno de los parámetros si sólo
                       #los ves así hola("Fer",23).
                       # Éso se puede arreglar utilizando parámetros con nombre.
  if edad > 31
    puts "Hola Señor #{nombre} "
  elsif edad < 21
    puts "Hola Jover #{nombre}"
  end
end

hola("Fernando", 33)

puts ""
pausa = gets
puts "A continuación, la forma en como los keyword argument. donde la definición de los parámetros cambia, asignando valores iniciales a los argumentos. Ésta es la forma en como los keyword params se definían en Ruby 2 y ésta ERA la única forma de hacerlo."

def hola(nombre:"", edad:0)
  if edad > 31
    puts "Hola Señor #{nombre} "
  elsif edad < 21
    puts "Hola Jover #{nombre}"
  end
end

hola(nombre:"Fernando", edad:18)
hola(nombre:"Fernando", edad:33)

# Cuál es la ventaja de utilizar éste enfoque con parámetros de nombre?
# 1ro. tenemos parámetros o valores opcionales que pueden ser enviados o no pueden ser neviados, por ejemplo; si no queremos pasar la edad, por default le pasamos un valor inicial y lo reconoce como el valor edad. y devolverá hola joven..
# De la misma manera sino pasamos el nombre, pasará un string vacío. Siempre con los valores inciiales; en éste caso devolverá hola jove.
# 2do el echo de que sean opcionales, también nos traen a otra definición: los valores por default.
# 3er ventaja es que el orden de los parámetros es arbitraria. Es decir, que no importa si pasamos Primero la edad y luego el Nombre: hola(edad:33, nombre:"Fernando")
# Para los keyword params también tenemos algo aprecedos al operador splat y en éste caso tenemos que utilizar un doble splat ** y tendramos una combinación de parámetros.
puts ""
pausa = gets
puts "Doble splat **"
def hola(nombre:"", edad:0, **options)
  if edad > 31
    puts "Hola Señor #{nombre} "
  elsif edad < 21
    puts "Hola Jover #{nombre}"
  end
  puts options
  puts options[:animal_favorito] # sintaxis para acceder a cada una de las opciones adicionales
end

hola(color_favorito: "Azul", animal_favorito: "Perro", comida_favorita: "lasagna")

puts ""
pausa = gets
puts "En Ruby 2.1 se agregaron los argumentos obligatorios o requeridos. Por ejemplo, en la siguiente sintaxis nombre es obligatorio y dará error (el argumento requierido puede ir en cualquier orden antes del doble splat.). SINO COLOCAMOS NADA DESPUES DE LOS DOS PUNTOS, nombre: y no nombre:'' VEREMOS EL SIGUIENTE ERROR EN LA EJECUCIÓN: "
puts ""

def hola(nombre:, edad:0, **options)
  if edad > 31
    puts "Hola Señor #{nombre} "
  elsif edad < 21
    puts "Hola Jover #{nombre}"
  end
  puts options
  puts options[:animal_favorito] # sintaxis para acceder a cada una de las opciones adicionales
end

hola(color_favorito: "Azul", animal_favorito: "Perro", comida_favorita: "lasagna")
