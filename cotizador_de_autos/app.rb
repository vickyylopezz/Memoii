require_relative 'model/factory_tipo_vehiculo'
require_relative 'model/cotizador'

datos = ARGV[0]
datos = datos.split('/')
tipo = datos[0]
cilindrada = datos[1]

cotizador = Cotizador.new
vehiculo = FactoryTipoVehiculo.new.crear_vehiculo(tipo)
ci = cotizador.calcular_coeficiente_impositivo(vehiculo, Integer(cilindrada))

puts "ci:#{ci}"
