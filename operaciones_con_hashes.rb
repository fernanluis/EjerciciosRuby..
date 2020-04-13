puts ""
puts "Cuántos elementos tiene nuestro hash?. Utilizamos la propiedad .length"
pausa = gets
tutor = {nombre:"Fernando", edad:33, cursos:12 }
puts tutor.length
puts ""
puts ".length es igual a utilizar .size"
puts "Cualquiera de los dos es válido."
pausa = gets
tutor = {nombre:"Fernando", edad:33, cursos:12 }
puts tutor.size
puts ""
puts "método has_key?()"
puts "has_key?() nos devuelve true cuando pasamos una clave que efectivamente existe dentro del hash y false cuando no."
pausa = gets
tutor = {nombre:"Fernando", edad:33, cursos:12 }
puts tutor.has_key?(:fecha)
puts tutor.has_key?(:nombre)
puts ""
puts "método keys"
puts "keys es para saber las puras claves. Y devuelve un arreglo únicamente con los elementos que tenemos como claves."
pausa = gets
tutor = {nombre:"Fernando", edad:33, cursos:12 }
puts tutor.keys
puts ""
puts "método values"
puts "values es el inverso de keys, quiennos devuelve los puros valores dentro del hash contenidos dentro de un arreglo."
pausa = gets
tutor = {nombre:"Fernando", edad:33, cursos:12 }
puts tutor.values
puts ""
puts "método clear"
puts "Deshacernos de todo lo que nuestro hash tiene."
pausa = gets
tutor = {nombre:"Fernando", edad:33, cursos:12 }
puts tutor.clear
puts ""
puts "método delete()"
puts "delete() elimina un elementos en una posición específica."
pausa = gets
tutor = {nombre:"Fernando", edad:33, cursos:12 }
puts tutor.delete(:cursos)
puts tutor
puts ""
puts "método empty?"
puts "empty? evalúa si nuestro has esta vacío."
pausa = gets
tutor = {nombre:"Fernando", edad:33, cursos:12 }
puts tutor.empty?
puts ""
puts "método empty?"
puts "empty? vaciando el hash"
pausa = gets
tutor = {nombre:"Fernando", edad:33, cursos:12 }
tutor.clear
puts tutor.empty?
puts ""
puts "método index(), ahora key() según terminal."
puts "Es no saber la clave de un valor conocido."
pausa = gets
tutor = {nombre:"Fernando", edad:33, cursos:12 }
puts tutor.key("Fernando")
puts ""
puts "método has_value?"
puts "Nos dice que exite el valor consultado."
pausa = gets
tutor = {nombre:"Fernando", edad:33, cursos:12 }
puts tutor.has_value?("Fernando")
puts tutor.has_value?("33")
puts ""
puts "método invert"
puts "Transforma los valoresen claves y las claves en valores."
pausa = gets
tutor = {nombre:"Fernando", edad:33, cursos:12 }
puts tutor.invert
puts ""
puts "método merge"
puts "Operación para combinar dos hashes."
pausa = gets
tutor = {nombre:"Fernando", edad:33, cursos:12 }
user_info = {apellido: "Ramos", segundo_apellido: "Vallejos"}
puts tutor.merge(user_info)
