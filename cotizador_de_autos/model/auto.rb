class Auto
  BASE = 1000
  def calcular_coeficiente_impositivo(cilindrada)
    (BASE * cilindrada) / 1_000_000
  end
end
