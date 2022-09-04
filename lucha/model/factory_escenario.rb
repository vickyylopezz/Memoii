require_relative 'noche'
require_relative 'lluvia'
require_relative 'escenario_desconocido_error'
require_relative 'bosque'
require_relative 'ciudad'
require_relative 'escenario'

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
    elsif escenario == 'bosque'
      Bosque.new
    else
      raise EscenarioDesconocidoError
    end
  end
end
