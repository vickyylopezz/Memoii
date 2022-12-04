class Camion
  BASE = 2000
  def coeficiente_impositivo(cilindrada)
    (BASE * cilindrada) / 1_000_000
  end

  def valor_mercado(kilometros, cilindrada)
    ((coeficiente_impositivo(cilindrada) * BASE) / ((kilometros + cilindrada) * 0.002)).round(1)
  end
end
