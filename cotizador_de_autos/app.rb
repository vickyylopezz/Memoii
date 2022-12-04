require_relative 'model/cotizador'
require_relative 'model/validador'

datos = ARGV[0]
datos = datos.split('/')
validador = Validador.new
vehiculo = validador.validar_vehiculo(datos[0])
cilindrada = datos[1]
kilometraje = datos[2]

cotizador = Cotizador.new

ci = cotizador.calcular_coeficiente_impositivo(vehiculo, Integer(cilindrada))
vm = cotizador.calcular_valor_mercado(vehiculo, Integer(cilindrada), Integer(kilometraje))
puts "ci:#{ci} & vm:#{vm}"
