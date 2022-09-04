class Noche < Escenario
  INCREMENTO_NOCHE = 2

  def incrementar_puntaje_para_vampiro(puntaje)
    puntaje * INCREMENTO_NOCHE
  end
end
