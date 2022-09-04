class Humano
  def calcular_puntaje_con(arma)
    return 2 if arma.instance_of? Espada
    return 3 if arma.instance_of? Cuchillo

    1
  end

  def calcular_puntaje_en(escenario)
    return 2 if escenario.instance_of? Ciudad

    1
  end
end
