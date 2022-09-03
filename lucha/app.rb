require_relative 'model/luchador'
require_relative 'model/enfrentamiento'
require_relative 'model/humano'
require_relative 'model/espada'
require_relative 'model/estadio'
require_relative 'model/factory_arma'

escenario = ARGV[0] # rubocop:disable Lint/UselessAssignment
personaje_uno = ARGV[1] # rubocop:disable Lint/UselessAssignment
arma_uno = ARGV[2]
personaje_dos = ARGV[3] # rubocop:disable Lint/UselessAssignment
arma_dos = ARGV[4]

luchador_uno = Luchador.new(Humano.new, FactoryArma.new.crear_arma(arma_uno), Estadio.new)
luchador_dos = Luchador.new(Humano.new, FactoryArma.new.crear_arma(arma_dos), Estadio.new)
ganador = Enfrentamiento.new.luchar(luchador_uno, luchador_dos)

puts "Resultado: #{ganador}"
