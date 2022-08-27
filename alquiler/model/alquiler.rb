class Alquiler
  def calcular(parametros_alquiler, tipo_alquiler)
    return 100 * parametros_alquiler if tipo_alquiler == 'h'

    return 2000 * parametros_alquiler if tipo_alquiler == 'd'

    100 + 10 * parametros_alquiler if tipo_alquiler == 'k'
  end
end
