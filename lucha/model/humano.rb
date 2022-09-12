class Humano
  PUNTAJE_HUMANO = 1
  def calcular_puntaje_con(arma)
    arma.incrementar_puntaje(PUNTAJE_HUMANO)
  end

  def calcular_puntaje_en(escenario)
    escenario.incrementar_puntaje_para_humano(PUNTAJE_HUMANO)
  end
end
