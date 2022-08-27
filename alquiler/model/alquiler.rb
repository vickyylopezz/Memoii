class Alquiler
  def calcular(parametros_alquiler, tipo_alquiler, cuit, fecha_alquiler, fecha_devolucion)
    costo = 0
    costo = 100 * parametros_alquiler if tipo_alquiler == 'h'

    costo = 2000 * parametros_alquiler if tipo_alquiler == 'd'

    costo = 100 + 10 * parametros_alquiler if tipo_alquiler == 'k'

    costo = aplicar_descuento(costo, cuit)
    aplicar_recargo(costo, fecha_alquiler, fecha_devolucion)
  end

  def aplicar_descuento(monto, cuit)
    return monto - monto * 0.05 if cuit.match(/^26/)

    monto
  end

  def aplicar_recargo(monto, fecha_alquiler, fecha_devolucion)
    return 4000 if fecha_devolucion > fecha_alquiler

    monto
  end
end
