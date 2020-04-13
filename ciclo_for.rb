class HolaMundo

  def initialize()

  end

  def saluda()
    for i in (1..9)
      print i
      print "\n"
    end
  end

end

objeto = HolaMundo.new
objeto.saluda
gets()

# break
class HolaMundo

  def initialize()

  end

  def saluda()
    for i in (1..9)
      if i == 2
        break # break, rompe el ciclo y se termina
      end
      print i
      print "\n"
    end
  end

end

objeto = HolaMundo.new
objeto.saluda
gets()

# next
class HolaMundo

  def initialize()

  end

  def saluda()
    for i in (1..9)
      if i == 2
        next # next, simple  y sencillamente se salta un paso del ciclo.
      end
      print i
      print "\n"
    end
  end

end

objeto = HolaMundo.new
objeto.saluda
gets()

# redo
class HolaMundo

  def initialize()

  end

  def saluda()
    for i in (1..9)
      for i in (1..9)
      print i
      print "\n"
      if i == 2
        redo # redo, cuando vale 2 repite. Aquí va a ciclar infinitamente.
      end
    end
    end
  end

end

objeto = HolaMundo.new
objeto.saluda

gets()
