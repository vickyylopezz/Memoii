require_relative 'noche'
require_relative 'lluvia'

class FactoryEscenario
  def crear_escenario(escenario)
    if escenario == 'estadio'
      Estadio.new
    elsif escenario == 'ciudad'
      Ciudad.new
    elsif escenario == 'noche'
      Noche.new
    elsif escenario == 'lluvia'
      Lluvia.new
    end
  end
end
