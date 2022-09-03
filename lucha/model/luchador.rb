class Luchador
  attr_reader :arma, :personaje, :escenario
  def initialize(personaje, arma, escenario)
    @personaje = personaje
    @arma = arma
    @escenario = escenario
  end

  def puntaje
    @personaje.calcular_puntaje_con(@arma) + @personaje.calcular_puntaje_en(@escenario)
  end
end
