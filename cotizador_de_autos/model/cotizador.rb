class Cotizador
  def calcular_coeficiente_impositivo(vehiculo, cilindrada)
    vehiculo.coeficiente_impositivo(cilindrada)
  end

  def calcular_valor_mercado(vehiculo, cilindrada, kilometraje)
    vehiculo.valor_mercado(kilometraje, cilindrada)
  end
end
