require_relative 'mano'

class Enfrentamiento
  def luchar(_luchador_uno, luchador_dos)
    return 'gana 1' if luchador_dos.arma.instance_of? Mano

    'empate'
  end
end
