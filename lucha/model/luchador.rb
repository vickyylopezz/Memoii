class Luchador
  attr_reader :arma, :personaje, :escenario
  def initialize(personaje, arma, escenario)
    @personaje = personaje
    @arma = arma
    @escenario = escenario
  end

  def puntaje
    return 6 if (@personaje.instance_of? Lobo) && (@arma.instance_of? Espada)
    return 3 if @personaje.instance_of? Lobo
    return 1 if @arma.instance_of? Mano

    2
  end
end
