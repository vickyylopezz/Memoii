class FactoryEscenario
  def crear_escenario(escenario)
    if escenario == 'estadio'
      Estadio.new
    elsif escenario == 'ciudad'
      Ciudad.new
    end
  end
end
