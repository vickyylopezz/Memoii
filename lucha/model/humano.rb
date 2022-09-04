class Humano
  PUNTAJE_HUMANO = 1
  def calcular_puntaje_con(arma)
    arma.incrementar_puntaje(PUNTAJE_HUMANO)
  end

  def calcular_puntaje_en(escenario)
    return 2 if escenario.instance_of? Ciudad

    1
  end
end
