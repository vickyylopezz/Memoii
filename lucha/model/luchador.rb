class Luchador
  attr_reader :arma, :personaje
  def initialize(personaje, arma, _escenario)
    @personaje = personaje
    @arma = arma
  end
end
