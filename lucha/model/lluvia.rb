class Lluvia < Escenario
  DISMINUCION_LLUVIA = 1

  def incrementar_puntaje_para_vampiro(puntaje)
    puntaje - DISMINUCION_LLUVIA
  end
end
