require_relative 'vehiculo'

class Auto < Vehiculo
  def initialize
    @base = 1000
  end

  def valor_mercado(kilometros, cilindrada)
    ((coeficiente_impositivo(cilindrada) * @base) / (1 + 0.001 * kilometros)).round(1)
  end
end
