class Vampiro
  def calcular_puntaje_con(arma)
    return 2 if arma.instance_of? Mano

    4
  end

  def calcular_puntaje_en(escenario)
    return 2 if escenario.instance_of? Estadio

    4
  end
end
