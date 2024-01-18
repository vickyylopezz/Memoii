require_relative 'vehiculo'
class Camioneta < Vehiculo
  def initialize
    @base = 1500
  end

  def valor_mercado(kilometro, cilindrada)
    (3 * (coeficiente_impositivo(cilindrada) * @base) / ((kilometro + cilindrada) * 0.003)).round(1)
  end
end
