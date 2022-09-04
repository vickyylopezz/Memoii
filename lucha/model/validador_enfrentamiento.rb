class ValidadorEnfrentamiento
  def initialize(escenario, personaje_uno, arma_uno, personaje_dos, arma_dos)
    @escenario = escenario
    @personaje_uno = personaje_uno
    @personaje_dos = personaje_dos
    @arma_uno = arma_uno
    @arma_dos = arma_dos
  end

  def validar_escenario
    begin
      escenario = FactoryEscenario.new.crear_escenario(@escenario)
    rescue EscenarioDesconocidoError
      puts 'error: escenario desconocido'
      exit 1
    end
    escenario
  end
end
