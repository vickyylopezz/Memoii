require_relative 'noche'
require_relative 'lluvia'
require_relative 'escenario_desconocido_error'

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
    else
      raise EscenarioDesconocidoError
    end
  end
end
