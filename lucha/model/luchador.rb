class Luchador
  attr_reader :arma, :personaje
  def initialize(personaje, arma, _escenario)
    @personaje = personaje
    @arma = arma
  end

  def puntaje
    return 1 if @arma.instance_of? Mano

    2
  end
end
