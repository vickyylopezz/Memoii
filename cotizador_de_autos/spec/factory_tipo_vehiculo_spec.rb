require 'spec_helper'

describe 'FactoryTipoVehiculo' do

  it 'debe crear una instancia de Auto al pasarle auto como parametro' do
    factory = FactoryTipoVehiculo.new()
    expect(factory.crear_vehiculo('auto')).to be_an_instance_of(Auto)
  end

  it 'debe crear una instancia de Camioneta al pasarle camioneta como parametro' do
    factory = FactoryTipoVehiculo.new()
    expect(factory.crear_vehiculo('camioneta')).to be_an_instance_of(Camioneta)
  end

  it 'debe crear una instancia de Camioneta al pasarle camioneta como parametro' do
    factory = FactoryTipoVehiculo.new()
    expect(factory.crear_vehiculo('camion')).to be_an_instance_of(Camion)
  end
end
