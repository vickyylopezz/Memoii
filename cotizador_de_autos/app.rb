require_relative 'model/cotizador'
require_relative 'model/validador'

datos = ARGV[0]
datos = datos.split('/')
validador = Validador.new
vehiculo = validador.validar_vehiculo(datos[0])
cilindrada = validador.validar_cilindrada(datos[1])
kilometraje = validador.validar_kilometraje(datos[2])

cotizador = Cotizador.new

ci = cotizador.calcular_coeficiente_impositivo(vehiculo, cilindrada)
vm = cotizador.calcular_valor_mercado(vehiculo, cilindrada, Integer(kilometraje))
puts "ci:#{ci} & vm:#{vm}"
