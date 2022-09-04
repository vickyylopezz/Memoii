class Lobo
  def calcular_puntaje_con(arma)
    return 6 if arma.instance_of? Espada

    3
  end

  def calcular_puntaje_en(_escenario)
    3
  end
end
