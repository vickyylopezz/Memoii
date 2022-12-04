class Camion
  BASE = 2000
  def coeficiente_impositivo(cilindrada)
    (BASE * cilindrada) / 1_000_000
  end
end
