class Humano
  def calcular_puntaje_con(arma)
    return 2 if arma.instance_of? Espada

    1
  end
end
