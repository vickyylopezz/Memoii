class Noche
  INCREMENTO_NOCHE = 2
  def incrementar_puntaje_para_humano(puntaje)
    puntaje
  end

  def incrementar_puntaje_para_lobo(puntaje)
    puntaje
  end

  def incrementar_puntaje_para_vampiro(puntaje)
    puntaje * INCREMENTO_NOCHE
  end
end
