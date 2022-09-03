require_relative 'espada'
require_relative 'mano'

class FactoryArma
  def crear_arma(arma)
    if arma == 'espada'
      Espada.new
    elsif  arma == 'mano'
      Mano.new
    end
  end
end
