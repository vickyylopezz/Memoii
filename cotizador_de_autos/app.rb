require_relative 'model/factory_tipo_vehiculo'
require_relative 'model/cotizador'

datos = ARGV[0]
datos = datos.split('/')
tipo = datos[0]
cilindrada = datos[1]
kilometraje = datos[2]

cotizador = Cotizador.new
vehiculo = FactoryTipoVehiculo.new.crear_vehiculo(tipo)
ci = cotizador.calcular_coeficiente_impositivo(vehiculo, Integer(cilindrada))
vm = cotizador.calcular_valor_mercado(vehiculo, Integer(cilindrada), Integer(kilometraje))
puts "ci:#{ci} & vm:#{vm}"
