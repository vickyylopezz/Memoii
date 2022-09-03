require_relative 'model/luchador'
require_relative 'model/enfrentamiento'
require_relative 'model/humano'
require_relative 'model/espada'
require_relative 'model/estadio'

escenario = ARGV[0] # rubocop:disable Lint/UselessAssignment
personaje_uno = ARGV[1] # rubocop:disable Lint/UselessAssignment
arma_uno = ARGV[2] # rubocop:disable Lint/UselessAssignment
personaje_dos = ARGV[3] # rubocop:disable Lint/UselessAssignment
arma_dos = ARGV[4] # rubocop:disable Lint/UselessAssignment

luchador_uno = Luchador.new(Humano.new, Espada.new, Estadio.new)
luchador_dos = Luchador.new(Humano.new, Espada.new, Estadio.new)
ganador = Enfrentamiento.new.luchar(luchador_uno, luchador_dos) # rubocop:disable Lint/UselessAssignment

puts 'Resultado: empate'
