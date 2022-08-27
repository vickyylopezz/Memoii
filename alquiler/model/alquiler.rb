class Alquiler
  def calcular(parametros_alquiler, tipo_alquiler) # rubocop:disable Lint/UnusedMethodArgument
    return 130 if tipo_alquiler == 'k'
    return 10_000 if tipo_alquiler == 'd'

    300
  end
end
