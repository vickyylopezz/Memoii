class Alquiler
  def calcular(parametros_alquiler, tipo_alquiler)
    return 100 * parametros_alquiler if tipo_alquiler == 'h'

    return 130 if tipo_alquiler == 'k'

    10_000 if tipo_alquiler == 'd'
  end
end
