begin
1/0
rescue => err # Con rescue podemos salvar
  puts err.message
end

puts "Hola Mundo"

gets()

# raise, palabra reservada para crear nuestras propias excepciones
def verdadero(valor)
  raise TypeError, "Tienes que mandar un valor verdadero" if valor == false
rescue => err
  puts err.message
end
verdadero false

gets()

def verdadero(valor)
  File.open("")
rescue => err
  puts err.message
end
verdadero false

gets()

# ensure
def verdadero(valor)
  archivo = File.open("singleton.rb")
  raise
rescue => err
  puts err.message
ensure
  archivo.close
  puts "Solo me aseguro de cerrar el archivo."
end
verdadero false

gets()


def verdadero(valor)
  raise TypeError, "Tienes que mandar un valor verdadero" if valor == false
end
verdadero false
