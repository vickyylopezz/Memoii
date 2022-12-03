require_relative 'auto'
require_relative 'camioneta'

class FactoryTipoVehiculo
  VEHICULOS = {'auto' => Auto.new, 'camioneta' => Camioneta.new}.freeze
  def crear_vehiculo(tipo)
    VEHICULOS[tipo]
  end
end
