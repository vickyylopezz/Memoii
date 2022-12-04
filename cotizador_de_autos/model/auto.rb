class Auto
  BASE = 1000
  def calcular_coeficiente_impositivo(cilindrada)
    (BASE * cilindrada) / 1_000_000
  end

  def calcular_valor_mercado(kilometraje, cilindrada)
    ((calcular_coeficiente_impositivo(cilindrada) * BASE) / (1 + 0.001 * kilometraje)).round(1)
  end
end
