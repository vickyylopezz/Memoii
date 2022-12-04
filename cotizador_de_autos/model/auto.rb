class Auto
  BASE = 1000
  def coeficiente_impositivo(cilindrada)
    (BASE * cilindrada) / 1_000_000
  end

  def valor_mercado(kilometraje, cilindrada)
    ((coeficiente_impositivo(cilindrada) * BASE) / (1 + 0.001 * kilometraje)).round(1)
  end
end
