require_relative 'escenario'

class Bosque < Escenario
  INCREMENTO_BOSQUE = 3

  def incrementar_puntaje_para_lobo(puntaje)
    puntaje * INCREMENTO_BOSQUE
  end
end
