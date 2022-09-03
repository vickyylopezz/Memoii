require_relative 'mano'

class Enfrentamiento
  def luchar(luchador_uno, luchador_dos)
    return 'empate' if luchador_uno.arma.class == luchador_dos.arma.class

    'gana 1'
  end
end
