class Camion
  BASE = 2000
  def coeficiente_impositivo(cilindrada)
    (BASE * cilindrada) / 1_000_000
  end

  def valor_mercado(_kilometros, _cilindrada)
    1000.0
  end
end
