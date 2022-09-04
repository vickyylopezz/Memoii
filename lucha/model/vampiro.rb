class Vampiro
  def calcular_puntaje_con(arma)
    return 2 if arma.instance_of? Mano

    4
  end
end
