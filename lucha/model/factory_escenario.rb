require_relative 'noche'
class FactoryEscenario
  def crear_escenario(escenario)
    if escenario == 'estadio'
      Estadio.new
    elsif escenario == 'ciudad'
      Ciudad.new
    elsif escenario == 'noche'
      Noche.new
    end
  end
end
