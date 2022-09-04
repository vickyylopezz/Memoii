class Lobo
  PUNTAJE_LOBO = 3
  def calcular_puntaje_con(arma)
    arma.incrementar_puntaje(PUNTAJE_LOBO)
  end

  def calcular_puntaje_en(escenario)
    return 9 if escenario.instance_of? Bosque

    3
  end
end
