class Vampiro
  PUNTAJE_VAMPIRO = 2
  def calcular_puntaje_con(arma)
    arma.incrementar_puntaje(PUNTAJE_VAMPIRO)
  end

  def calcular_puntaje_en(escenario)
    return 1 if escenario.instance_of? Lluvia
    return 4 if escenario.instance_of? Noche

    2
  end
end
