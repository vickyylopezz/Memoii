class Lluvia
  DISMINUCION_LLUVIA = 1
  def incrementar_puntaje_para_humano(puntaje)
    puntaje
  end

  def incrementar_puntaje_para_lobo(puntaje)
    puntaje
  end

  def incrementar_puntaje_para_vampiro(puntaje)
    puntaje - DISMINUCION_LLUVIA
  end
end
