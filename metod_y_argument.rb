# Métodos y argumentos en el contexto donde éstas funciones estan por fuera de los objetos.
# Aún no vemos programación orientada a objetos.
# Método: grupode código que se puede reciclar.

puts ""
puts "Definimos un método que nos defina el cuadrado de un número. Por ejemplo: número = 2"
pausa = gets
def square (x)
  # Retorna el cuadrado de un número.
  x + x
end

puts square(2) # los dobles paréntesis en Ruby se pueden ignorar. Pero si el ḿetodo recibe argumentos es recomendable agregarselos.

puts ""
puts "Definimos un método saludar"
pausa = gets
def saludar() # los dobles paréntesis en Ruby se pueden ignorar.  Pero si el ḿetodo recibe argumentos es recomendable agregarselos.
  puts "Hola Mundo!"
end

puts saludar

puts""
puts "Los argumentos son variables qeu recibe el método y que se especifican en la definición del mismo."
puts ""
pausa = gets
puts "return Palabra reservada. En Ruby puede ignorarse. Los métodos de Ruby siempre siempre siempre retornan lo que encuentran en la última línea."
puts ""
pausa = gets
puts "Pero,cuándo debería de utilizar la palabra return? Pués, cuando quieres terminar la ejecución del programa antes y no precisamente en la última línea."
puts ""
puts "A menos que el valor ingresado sea un entero, termina la ejecución dando como valor Game Over."
pausa = gets
def square (x)
  # Retorna el cuadrado de un número.
  return "Game Over" unless x.is_a? Integer
  x + x
end

puts square("a") # los dobles paréntesis en Ruby se pueden ignorar. Pero si el ḿetodo recibe argumentos es recomendable agregarselos.
