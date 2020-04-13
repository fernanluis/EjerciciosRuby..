puts "Aplicando algunos operadores, luego te pedirá que ingreses un número."
puts "Ejemplo"
x = 5
y = 2
puts "x = #{5}"
puts "y = #{2}"
puts ""
puts "Operador suma = #{5 + 2}." # operador suma, también se comporta como método.
# el comportamiento de + puede ser como operador y como método
puts ""
puts "Operador resta = #{5 - 2}."
puts ""
puts "Operador multiplicación = #{5 * 2}."
puts ""
puts "Operador división utilizando metodo .to_f = #{5.to_f / 2.to_f}."
puts ""
puts "Operador % (porcentaje o módulo) con 6 % 2 = #{6 % 2}."
puts ""
puts "A continuación, ingresa un número."
numero = gets.chomp
numero = numero.to_i
residuo = numero % 2
puts ""
puts "El número ingresado puede ser par o impar, si arroja un resultado cero o 1, respectivamente."

if residuo == 1
  puts "#{numero} Aplicando % 2, el residuo en cuestión es 1, poreso el número ingresado es IMPAR de lo contrario es otra la respuesta."
else
  puts "#{numero} Aplicando % 2, el residuo en cuestión es cero, poreso el número en cuestión es PAR de lo contrario es otra la respuesta."
end
puts ""
puts "Continuamos con el operador potencia."
puts ""
puts "Operador potencia 5**2 = #{ 5**2}, como verás la potencia se coloca vía doble asterísco."
puts ""
puts "Una parte clave de manejar operadores aritméticos en un lenguaje de programación es la precedencia que ellos tienen."
puts "La precedencia funciona de la siguiente manera; los que tienen mayor precedencia en el caso único y exclusivamente de los operadores aritméticos son:.."
puts ""
puts "En 1er. lugar se ejecuta la potencia o el exponencial **, después, en el mismo nivel (2do), la multiplicación (*), la divición (/) y el módulo (%)."
=begin
1. **
2.* / %
3. + -
=end
puts ""
puts "En 3er. lugar tenemos la suma (+) y la resta (-)"
puts ""
puts "En el caso de que tengamos una operación con operadores del mismo nivel, se lee de izq a derecha, ejemplo 12*2/3=8"
puts ""
puts "Y la única manera de alterar la precedencia es utilizar los paréntesis, ya que lo que primero que se evalúa es el paréstesis luego lo demás."
