require_relative 'model/luchador'
require_relative 'model/enfrentamiento'
require_relative 'model/humano'
require_relative 'model/espada'
require_relative 'model/estadio'
require_relative 'model/factory_arma'
require_relative 'model/factory_personaje'

escenario = ARGV[0] # rubocop:disable Lint/UselessAssignment
personaje_uno = ARGV[1]
arma_uno = ARGV[2]
personaje_dos = ARGV[3]
arma_dos = ARGV[4]

personaje_uno = FactoryPersonaje.new.crear_personaje(personaje_uno)
personaje_dos = FactoryPersonaje.new.crear_personaje(personaje_dos)
arma_uno = FactoryArma.new.crear_arma(arma_uno)
arma_dos = FactoryArma.new.crear_arma(arma_dos)
luchador_uno = Luchador.new(personaje_uno, arma_uno, Estadio.new)
luchador_dos = Luchador.new(personaje_dos, arma_dos, Estadio.new)
ganador = Enfrentamiento.new.luchar(luchador_uno, luchador_dos)

puts "Resultado: #{ganador}"
