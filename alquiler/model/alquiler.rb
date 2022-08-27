class Alquiler
  def calcular(parametros_alquiler, tipo_alquiler, cuit)
    costo = 0
    costo = 100 * parametros_alquiler if tipo_alquiler == 'h'

    costo = 2000 * parametros_alquiler if tipo_alquiler == 'd'

    costo = 100 + 10 * parametros_alquiler if tipo_alquiler == 'k'

    aplicar_descuento(costo, cuit)
  end

  def aplicar_descuento(monto, cuit)
    return monto - monto * 0.05 if cuit.match(/^26/)

    monto
  end
end
