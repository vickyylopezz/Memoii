class Lobo
  def calcular_puntaje_con(arma)
    return 6 if arma.instance_of? Espada
    return 5 if arma.instance_of? Cuchillo

    3
  end

  def calcular_puntaje_en(escenario)
    return 9 if escenario.instance_of? Bosque

    3
  end
end
