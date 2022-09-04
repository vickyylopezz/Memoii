require_relative 'espada'
require_relative 'mano'
require_relative 'cuchillo'

class FactoryArma
  def crear_arma(arma)
    if arma == 'espada'
      Espada.new
    elsif  arma == 'mano'
      Mano.new
    elsif  arma == 'cuchillo'
      Cuchillo.new
    end
  end
end
