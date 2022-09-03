class Lobo
  def calcular_puntaje_con(arma)
    return 6 if arma.instance_of? Espada

    3
  end
end
