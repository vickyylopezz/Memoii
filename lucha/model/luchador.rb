class Luchador
  attr_reader :arma, :personaje
  def initialize(personaje, arma, _escenario)
    @personaje = personaje
    @arma = arma
  end

  def puntaje
    2
  end
end
