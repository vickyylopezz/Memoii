class Camioneta
  BASE = 1500
  def coeficiente_impositivo(cilindrada)
    (BASE * cilindrada) / 1_000_000
  end

  def valor_mercado(kilometros, cilindrada)
    (3 * (coeficiente_impositivo(cilindrada) * BASE) / ((kilometros + cilindrada) * 0.003)).round(1)
  end
end
