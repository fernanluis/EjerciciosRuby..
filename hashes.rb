# un hash es una estructura que almacena datos como un diccionario lo haría.
# un hash suele considerarse un arreglo asociativo.
# la diferencia entre un hast y un arreglo radica en cómo podemos acceder a los datos que se almacenan.
# mientras que en un arreglo podemos acceder a una información utilizando la posicion en la que se encuentra o indice vñia un número .
# en un hash, la clave con la que podemos acceder a la información puede ser cualquier tipo de objeto.
# la sintaxis es distinta.

# arreglo = ["hola", "mundo"]
# arreglo[1] # es con arreglo.

# un hash

# {"nombre" => "Fer", "edad" => 33, :hola => "Mundo"}
# nota que en el lado izquierdo puedeir cualquier tipo de objeto como un símbolo. (:hola)

# una expresión regular También puede ser una clave de un hash
# los diccionarios o los hashes se componen de elementos que a su vez tienen 2 partes;una clave y un valor.
# la clave aparece a la izquierda y es vía éste dato que vamos a obtener la información y dicha información o el valor aparece hacia la derecha y se separan vía un flecha.
puts ""
tutor = {"nombre" => "Fernando", "edad" => 33, 33 => "treinta y tres", [] => "arreglo"}
puts "Tanto para claves como para valores, éstos pueden ser string, números, objetos, cualquier cosa."
puts ""
puts "A continuación un hash como ejemplo."
puts ""
puts tutor
puts ""
puts "Ahora accedemos a la clave nombre con puts tutor['nombre']"
pausa = gets
puts tutor["nombre"]
tutor = {"nombre" => "Fernando", "edad" => 33, 33 => "treinta y tres", [] => "arreglo"}
puts "También podemos modificar el hash agregando nuevos valores. Como por ejemplo; tutor['cursos'] = 12. Y denuevo, aquí pueden ser cualquier tio de datos y/o objetos."
pausa = gets
tutor['cursos'] = 12
puts tutor
puts "Cuando tratamos de acceder a una clave que no existe, nos va a devolver nulo."
pausa = gets
tutor = {"nombre" => "Fernando", "edad" => 33, 33 => "treinta y tres", [] => "arreglo"}
puts tutor[5]
puts "También podemos definir un valor por default para las posiciones en las que no hay nada y podemos utilizar la propiedad .default "
pausa = gets
tutor = {"nombre" => "Fernando", "edad" => 33, 33 => "treinta y tres", [] => "arreglo"}
tutor.default =":)"
puts tutor[5]

puts ""
puts "UNA SINTAXIS ALTERNATIVA PARA EL MANEJO DE HASHES MÁS LIMPIA Y QUE ES MÁS COMÚN ES AQUELLA QUE SE DA CUANDO TODAS LAS CLAVES SON SÍMBOLOS."
puts tutor
pausa = gets
tutor = {:nombre => "Fernando", :edad => 33, :cursos => 12 }
puts ""
puts "Podemos cambiar la sintaxis a la siguiente manera: nombre:'fernando', edad:23, cursos:12"
pausa = gets
tutor = {nombre:"Fernando", edad:33, cursos:12 }
puts tutor
puts ""
puts "Obviamente que, al crear los datos, si utilizamos símbolos, para extraerlos utilizaremos símbolos. ej: puts tutor[:nombre]. No así el string 'nombre', porque el string 'nombre' es distinto del símbolo :nombre"
pausa = gets
tutor = {nombre:"Fernando", edad:33, cursos:12 }
puts tutor[:nombre]
puts ""
puts "Algo muy coḿun que hiciéramos con un hash esiterarlo utilizando .each de la misma manera que en los arreglos, sólo que en bloque vamos a recibir dos valores. |clave, valor|. Es decir, la clave y el valor respectivamente."
pausa = gets
tutor = {nombre:"Fernando", edad:33, cursos:12 }
tutor.each do |clave,valor|
  puts "En clave #{clave} esta gardado el valor #{valor}"
end
