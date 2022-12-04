require_relative 'vehiculo'

class Camion < Vehiculo
  def initialize
    @base = 2000
  end

  def valor_mercado(kilometros, cilindrada)
    ((coeficiente_impositivo(cilindrada) * @base) / ((kilometros + cilindrada) * 0.002)).round(1)
  end
end
