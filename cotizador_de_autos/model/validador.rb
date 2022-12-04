require_relative 'vehiculo_invalido'
require_relative 'factory_tipo_vehiculo'
class Validador
  CILINDRADA_VALIDA = /(1000|1600|2000)/.freeze
  KILOMETRAJE_VALIDO = /^\d+$/.freeze
  def validar_vehiculo(vehiculo)
    begin
      vehiculo = FactoryTipoVehiculo.new.crear_vehiculo(vehiculo)
    rescue VehiculoInvalido
      puts 'error: vehiculo desconocido'
      exit 1
    end
    vehiculo
  end

  def validar_cilindrada(cilindrada)
    unless cilindrada.match(CILINDRADA_VALIDA)
      puts 'error: cilindrada desconocida'
      exit 1
    end
    Integer(cilindrada)
  end

  def validar_kilometraje(kilometraje)
    unless kilometraje.match(KILOMETRAJE_VALIDO)
      puts 'error: kilometraje invalido'
      exit 1
    end
    Integer(kilometraje)
  end
end
