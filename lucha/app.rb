require_relative 'model/luchador'
require_relative 'model/enfrentamiento'
require_relative 'model/humano'
require_relative 'model/espada'
require_relative 'model/estadio'
require_relative 'model/factory_arma'
require_relative 'model/factory_personaje'
require_relative 'model/factory_escenario'
require_relative 'model/validador_enfrentamiento'

escenario = ARGV[0]
personaje_uno = ARGV[1]
arma_uno = ARGV[2]
personaje_dos = ARGV[3]
arma_dos = ARGV[4]

validador = ValidadorEnfrentamiento.new(escenario, personaje_uno, arma_uno, personaje_dos, arma_dos)
escenario = validador.validar_creacion_escenario(escenario)
personaje_uno = validador.validar_creacion_personaje(personaje_uno)
personaje_dos = validador.validar_creacion_personaje(personaje_dos)
arma_uno = validador.validar_creacion_arma(arma_uno)
arma_dos = validador.validar_creacion_arma(arma_dos)

luchador_uno = Luchador.new(personaje_uno, arma_uno, escenario)
luchador_dos = Luchador.new(personaje_dos, arma_dos, escenario)
ganador = Enfrentamiento.new.luchar(luchador_uno, luchador_dos)

puts "Resultado: #{ganador}"
