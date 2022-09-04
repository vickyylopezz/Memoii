class Lobo
  PUNTAJE_LOBO = 3
  def calcular_puntaje_con(arma)
    arma.incrementar_puntaje(PUNTAJE_LOBO)
  end

  def calcular_puntaje_en(escenario)
    escenario.incrementar_puntaje_para_lobo(PUNTAJE_LOBO)
  end
end
