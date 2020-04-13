puts "Definimos una URL: http://www.mipáginadejemplo.com:80/inicio"

gets()

puts "El protocolo: http://"

gets()

puts "El servidor: www.mipáginadejemplo.com"

gets()

puts "El puerto: :80"

gets()

puts "El recurso que solicitamos: /inicio"

gets()

puts "Por lo general, uno no escribe, ni el protocolo ni el puerto, porque http y 80 son los valores por default para la comunicación a internet."

gets()

puts "El browser toma ésta información y mediante el protocolo TCP-IP que es la base de la comunicación en Internet, establece una conexión con el servidorubicado en cualquier lugar del planeta."

gets()

puts "Una vez establecida la conexión, el browser envía lo que se conoce como una solicitud http al servidor. La solicitud contiene 3 secciones: "
gets()
puts "La línea inicial contiene el método a ejecutarse GET/inicio.html HTTP/1.0 (versión http:1.0)"
gets()
puts "2do. Los Headers son uno o más líneas que nos indican qué tipo de respuesta estamos esperando del servidor. Ejemplo: Accept;text/*.."
gets()
puts "Y por último, en el Body, sepuede incluir cualquier información adicional que se le quiera enviar al servidor pero ésta última ES OPCIONAL. Ejemplo: Host:www.ejemplo.com"
gets()
puts "La solicitud es empaquetada y es enviada al servidor dando inicio a lo que se conoce como Server Side Scripting"
gets()
puts "En éste paso el servidor toma la solicitud y la procesa utilizando un aplicación escrita generalmente en un lenguaje de programación. Donde también es común que el servidor se conecte a una base de datos para mantener o almacenar información."
gets()
puts "Finalmente el servidor obtiene la respuesta http que se va a enviar devuelta. Similar a la solicitud: contiene la línea inicial, los headers, y el body. Pero con algunas diferencias. En la línea inicial se envía el resulado 200OK. Los headers contienen información sobre la data que se está enviado en el Body. Y el Body contiene la data que en puede ser un archivo html. "
gets()
puts "Cuando el Browser recibe el html, lo primero que hace escrear una representación interna conocida como html DOM. En Browser va tomando cada uno de los elementos y los va moviendo para formar una estructura de árbol. "
gets()
puts "Fuente: https://www.youtube.com/watch?v=XHOo3EQGmfA"
