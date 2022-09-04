require_relative 'espada'
require_relative 'mano'
require_relative 'cuchillo'
require_relative 'arma_desconocida_error'

class FactoryArma
  def crear_arma(arma)
    if arma == 'espada'
      Espada.new
    elsif  arma == 'mano'
      Mano.new
    elsif  arma == 'cuchillo'
      Cuchillo.new
    else
      raise ArmaDesconocidaError
    end
  end
end
