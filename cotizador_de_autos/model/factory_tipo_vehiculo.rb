require_relative 'auto'
require_relative 'camioneta'
require_relative 'camion'

class FactoryTipoVehiculo
  VEHICULOS = {'auto' => Auto.new, 'camioneta' => Camioneta.new, 'camion' => Camion.new}.freeze
  def crear_vehiculo(tipo)
    VEHICULOS[tipo]
  end
end
