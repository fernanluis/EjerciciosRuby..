# Herenca, unos de los pilares de la programación orientada a objetos. POO.

# La Herencia puede identificarse o definirse como el proceso de crear clases a partir de otras clases.

# En el proceso encontramos dos conceptos claves: Los Padres y las Hijas.

# Las clases Padres son las clases de las que se Hereda, o también conocidas como las clases Base.

# Por otro lados, las clases Hijas son las nuevas clases que estan basadas en las clases Padres.

# Las clases Hijas también suelen conocerse como SubClases.

class Video
  attr_accessor :title, :duration
end

class YouTubeVideo < Video
  attr_accessor :youtube_id
end

yt = YouTubeVideo.new
yt.title = "Herencia en Ruby"
yt.youtube_id = "eregnEIV24F4F"

puts yt.title
puts yt.youtube_id

puts ""
pausa = gets
puts "Sólo la Hija Hereda del Padre. He ahí el nombre Heredar. Las Clases Hijas son una especialización del Padre."

puts ""
pausa = gets
puts "Ahora supongamos que queremos dos tipos de videos, uno para youtube y otro para facebook."


# class FacebookVideo
#   attr_accessor :title
#   attr_accessor :duration
#   attr_accessor :facebook_id
#   attr_accessor :description
# end
# class YouTubeVideo
#   attr_accessor :title
#   attr_accessor :duration
#   attr_accessor :youtube_id
#   attr_accessor :description
# end


# Factorizamos el código anterior.

class Video
  attr_accessor :title,:duration,:description

  def embed_video_code
    "<video></video>"
  end

end

class FacebookVideo < Video # En el caso de Ruby, solo se puede heredar de una sola clase. En otros lenguajes se puede heredar de multiples clases.
  attr_accessor :facebook_id
end

class YouTubeVideo < Video
  attr_accessor :youtube_id
end

puts YouTubeVideo.new().embed_video_code

puts ""
pausa = gets
puts "Sobre escribimos un método del Padre."

class Video
  attr_accessor :title,:duration,:description

  def embed_video_code
    "<video></video>"
  end

end

class FacebookVideo < Video # En el caso de Ruby, solo se puede heredar de una sola clase. En otros lenguajes se puede heredar de multiples clases.
  attr_accessor :facebook_id
end

class YouTubeVideo < Video
  attr_accessor :youtube_id

# El siguiente método es una overwrite del método del Padre.
  def embed_video_code # Sobreescrbimos el método del Padre.
    "<iframe />" # Y aquí utiliza su propia definición del método.
  end
end

puts YouTubeVideo.new().embed_video_code

puts ""
pausa = gets
puts "Habrá, claro, otras ocasiones en las que necesitaresmo hacer uso de las funcionalidades del Padre y luego hacer otras cosas específicas de la subclase."

class Video
  attr_accessor :title,:duration,:description

  def embed_video_code
    "<video></video>"
  end

  def setup(title)
    @title = title
  end

end

# Suprimimos por ahora el de FacebookVideo para generar un poquito más de espacio.

class YouTubeVideo < Video
  attr_accessor :youtube_id

# El siguiente método es una overwrite del método del Padre.
  def embed_video_code # Sobreescrbimos el método del Padre.
    "<iframe />" # Y aquí utiliza su propia definición del método.
  end

  def setup(title)
    super # Overwrite sin perder lo que el padre hacía.
    # Palabra clave super (no así super() porque evita que se le pueda enviar toda la lista de argumentos que se reciben en la definición del método de la hija) nos sirve para mandar a llamar al método del mismo nombre pero en la clase Padre.
    # Aquí viene todo lo que quisiéramos hacer extra.
    # ej: YouTubeAPI.init()
    puts "Algo extra."
  end

end

yt = YouTubeVideo.new()
yt.setup("Herencia de Ruby")
puts yt.title

puts ""
pausa = gets
puts "Por último, todas las clases de Ruby heredan de alguien y a menos que no las especifiques (sintaxis: ..>ClasePadre), todas estan heredando de la clase Object"
puts ""
pausa = gets
puts "Nuestra clase Video está heredando de Object ya que no tiene un padre explícito."
puts ""
pausa = gets
puts "El hecho de que en algún punto todas las clases heredan de Object hace que todos los métodos o propiedades que estan definidos en la clase Object esten disponibles en todos los objetos que hay en el lneguaje."
puts ""
pausa = gets
puts "Un ejemplo, es el object_id"

class Object

  def i_have_superpowers
    puts "Éste método esta en TODOS los objetos."
  end

end

class Video
  attr_accessor :title,:duration,:description

  def embed_video_code
    "<video></video>"
  end

  def setup(title)
    @title = title
  end

end

class YouTubeVideo < Video
  attr_accessor :youtube_id
  def embed_video_code
    "<iframe />"
  end

  def setup(title)
    super
    puts "Algo extra."
  end
end

puts 1.object_id

puts YouTubeVideo.new().object_id

[].i_have_superpowers
"".i_have_superpowers
11.i_have_superpowers
Video.i_have_superpowers
YouTubeVideo.i_have_superpowers
