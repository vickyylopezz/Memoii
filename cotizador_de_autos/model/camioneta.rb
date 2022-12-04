class Camioneta
  BASE = 1500
  def coeficiente_impositivo(cilindrada)
    (BASE * cilindrada) / 1_000_000
  end

  def valor_mercado(_kilometraje, _cilindrada)
    750.0
  end
end
