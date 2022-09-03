class Lobo
  def calcular_puntaje_con(arma)
    return 6 if arma.instance_of? Espada

    3
  end

  def calcular_puntaje_es(_estadio)
    3
  end
end
