require_relative 'vehiculo_invalido'
require_relative 'factory_tipo_vehiculo'
class Validador
  def validar_vehiculo(vehiculo)
    begin
      vehiculo = FactoryTipoVehiculo.new.crear_vehiculo(vehiculo)
    rescue VehiculoInvalido
      puts 'error: vehiculo desconocido'
      exit 1
    end
    vehiculo
  end
end
