require_relative 'mano'
require_relative 'lobo'

class Enfrentamiento
  def luchar(luchador_uno, luchador_dos)
    if luchador_uno.puntaje > luchador_dos.puntaje
      'gana 1'
    elsif luchador_uno.puntaje < luchador_dos.puntaje
      'gana 2'
    else
      'empate'
    end
  end
end
