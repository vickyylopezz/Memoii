require_relative 'mano'
require_relative 'lobo'

class Enfrentamiento
  def luchar(luchador_uno, luchador_dos)
    return 'gana 2' if luchador_dos.personaje.instance_of? Lobo
    return 'gana 1' if luchador_uno.personaje.instance_of? Lobo

    return 'empate' if luchador_uno.arma.class == luchador_dos.arma.class

    return 'gana 1' if luchador_uno.arma.instance_of? Espada

    'gana 2'
  end
end
