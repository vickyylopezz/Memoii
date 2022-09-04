class ValidadorEnfrentamiento
  def initialize(escenario, luchador_uno, arma_uno, luchador_dos, arma_dos)
    if escenario.nil? || luchador_uno.nil? || luchador_dos.nil? || arma_uno.nil? || arma_dos.nil?
      salir; end
  end

  def salir
    puts 'error: entrada incompleta'
    exit 1
  end

  def validar_creacion_escenario(escenario)
    begin
      escenario = FactoryEscenario.new.crear_escenario(escenario)
    rescue EscenarioDesconocidoError
      puts 'error: escenario desconocido'
      exit 1
    end
    escenario
  end

  def validar_creacion_personaje(personaje)
    begin
      personaje = FactoryPersonaje.new.crear_personaje(personaje)
    rescue PersonajeDesconocidoError
      puts 'error: personaje desconocido'
      exit 1
    end
    personaje
  end

  def validar_creacion_arma(arma)
    begin
      arma = FactoryArma.new.crear_arma(arma)
    rescue ArmaDesconocidaError
      puts 'error: arma desconocida'
      exit 1
    end
    arma
  end
end
