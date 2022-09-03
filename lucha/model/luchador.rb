class Luchador
  attr_reader :arma, :personaje, :escenario
  def initialize(personaje, arma, escenario)
    @personaje = personaje
    @arma = arma
    @escenario = escenario
  end

  def puntaje
    puntaje = @personaje.calcular_puntaje_con(@arma)
    puntaje += 2 if (@escenario.instance_of? Ciudad) && (@personaje.instance_of? Humano)
    puntaje
  end
end
