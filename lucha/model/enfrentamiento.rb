require_relative 'mano'

class Enfrentamiento
  def luchar(luchador_uno, luchador_dos)
    return 'empate' if luchador_uno.arma.class == luchador_dos.arma.class

    return 'gana 1' if luchador_uno.arma.instance_of? Espada

    'gana 2'
  end
end
