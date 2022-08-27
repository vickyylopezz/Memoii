class Alquiler
  COSTO_HORA = 100
  COSTO_DIA = 2000
  COSTO_KM = 10
  COSTO_BASE_KM = 100
  HORA = 'h'.freeze
  DIA = 'd'.freeze
  KM = 'k'.freeze
  def calcular(parametros_alquiler, tipo_alquiler, cuit, fecha_alquiler, fecha_devolucion)
    costo = 0
    costo = COSTO_HORA * parametros_alquiler if tipo_alquiler == HORA

    costo = COSTO_DIA * parametros_alquiler if tipo_alquiler == DIA

    costo = COSTO_BASE_KM + COSTO_KM * parametros_alquiler if tipo_alquiler == KM

    costo = aplicar_descuento(costo, cuit)

    aplicar_recargo(costo, fecha_alquiler, fecha_devolucion, parametros_alquiler, tipo_alquiler)
  end

  def aplicar_descuento(monto, cuit)
    return monto - monto * 0.05 if cuit.match(/^26/)

    monto
  end

  def aplicar_recargo(monto, fecha_alquiler, fecha_devolucion, cant_dias, tipo_alquiler)
    return monto + monto if fecha_devolucion - fecha_alquiler > cant_dias && tipo_alquiler == DIA

    monto
  end
end
