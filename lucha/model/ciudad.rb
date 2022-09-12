require_relative 'escenario'

class Ciudad < Escenario
  INCREMENTO_CIUDAD = 2
  def incrementar_puntaje_para_humano(puntaje)
    puntaje * INCREMENTO_CIUDAD
  end
end
