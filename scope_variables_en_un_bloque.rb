# Un bloque hereda el contexto en el que es ejecuado.
puts ""

def hola
  yield
end

nombre = "Luis Fernando"
hola {puts "Hola #{nombre}"}

puts ""
puts "La variable nombre no fué declarada dentro del bloque ni tampoco fué enviada como argumento. Ni siquiera tenemos barras verticales.."
puts ""

puts "El bloque tiene acceso a ésta variable porque el bloque recibe las variables locales de donde se esta ejecutando. Es decir, la variable nombre es parte del contexto en donde se está ejecutando el bloque y por tanto tiene acceso a ésa variable."
puts ""
pausa = gets
puts "Precisamente como son las mismas variables el bloque también puede modificar dicha varibale. Entonces, cualquier modificación que hagamos a una variable externa al bloque se va a ver reflejada incluso después de la definición del bloque, pues porque son las mismas variables."

puts ""

def hola
  yield
end

nombre = "Luis Fernando"

hola do
  nombre = "Ana Clara"
  puts "Hola #{nombre}"
end

puts nombre

puts ""
pausa = gets
puts "A su vez, los bloques también puede definir variables locales que sólo van a poder ser utilizadas dentro del bloque mismo. Por ejemplo, los argumentos que reciben un bloque son variables locales del mismo."
puts ""
puts "Éste último probado en un código por aparte, en otro archivo, aquí retorna valor al código de ejeción anterior. Vé el ejempo scope_var_bloque.rb"
puts ""

def hola
  yield("Luis Fernando") # Argumento "Luis Fernando"
end

hola do |nombre| # Variable nombre que se recibió como argumento es exclusiva del bloque y fuera del bloque no existe una definición a ésta variable.  De manera, que la variable desaparece cuando la ejecución del bloque termina.
  puts "Hola #{nombre}"
end

puts nombre # Al llegar a ésta línea nos dará un error en código por aparte. Aquí no lo daŕa porque retorna del código anterio.

puts ""
pausa = gets
puts "A partir de nuevas versiones de Ruby, los bloques también pueden definir variables locales que no sean argumento utilizando la siguiente sintaxis."
puts ""

def hola
  yield
end

nombre = "Luis Fernando"

hola do |; nombre| # Variable declarada como variable local del bloque mismo. ; separa los argumentos de la declaración de variables locales. |argumento1, argumnto2.. ; variable1, variabe2, ... |
  nombre = "Ana Clara"
  puts "Hola #{nombre}"
end

puts nombre
puts ""
