class Ciudad
  INCREMENTO_CIUDAD = 2
  def incrementar_puntaje_para_humano(puntaje)
    puntaje * 2
  end

  def incrementar_puntaje_para_lobo(puntaje)
    puntaje
  end

  def incrementar_puntaje_para_vampiro(puntaje)
    puntaje
  end
end
