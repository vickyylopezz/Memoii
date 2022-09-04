class Vampiro
  PUNTAJE_VAMPIRO = 2
  def calcular_puntaje_con(arma)
    arma.incrementar_puntaje(PUNTAJE_VAMPIRO)
  end

  def calcular_puntaje_en(escenario)
    escenario.incrementar_puntaje_para_vampiro(PUNTAJE_VAMPIRO)
  end
end
