class Ciudad
  INCREMENTO_CIUDAD = 2
  def incrementar_puntaje_para_humano(puntaje)
    puntaje * INCREMENTO_CIUDAD
  end

  def incrementar_puntaje_para_lobo(puntaje)
    puntaje
  end

  def incrementar_puntaje_para_vampiro(puntaje)
    puntaje
  end
end
