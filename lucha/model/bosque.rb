class Bosque
  INCREMENTO_BOSQUE = 3
  def incrementar_puntaje_para_humano(puntaje)
    puntaje
  end

  def incrementar_puntaje_para_lobo(puntaje)
    puntaje * INCREMENTO_BOSQUE
  end

  def incrementar_puntaje_para_vampiro(puntaje)
    puntaje
  end
end
