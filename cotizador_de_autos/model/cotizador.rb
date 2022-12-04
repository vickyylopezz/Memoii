class Cotizador
  def calcular_coeficiente_impositivo(vehiculo, cilindrada)
    vehiculo.calcular_coeficiente_impositivo(cilindrada)
  end

  def calcular_valor_mercado(vehiculo, cilindrada, kilometraje)
    vehiculo.calcular_valor_mercado(kilometraje, cilindrada)
  end
end
