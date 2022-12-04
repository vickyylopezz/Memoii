require 'spec_helper'

describe 'Validador' do
  it 'debe devolver una instancia de Auto al pasarle auto como parametro para validarlo' do
    validador = Validador.new()
    expect(validador.validar_vehiculo('auto')).to be_an_instance_of(Auto)
  end

end
