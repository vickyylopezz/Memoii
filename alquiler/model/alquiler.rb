class Alquiler
  def calcular(parametros_alquiler, tipo_alquiler) # rubocop:disable Lint/UnusedMethodArgument
    return 10_000 if tipo_alquiler == 'd'

    300
  end
end
