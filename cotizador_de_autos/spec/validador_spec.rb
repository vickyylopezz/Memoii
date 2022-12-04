require 'spec_helper'

describe 'Validador' do
  it 'debe devolver una instancia de Auto al pasarle auto como parametro para validarlo' do
    validador = Validador.new()
    expect(validador.validar_vehiculo('auto')).to be_an_instance_of(Auto)
  end

  it 'debe devolver la cilindrada al pasarle una cilindrada como parametro para validarlo' do
    validador = Validador.new()
    expect(validador.validar_cilindrada("1000")).to eq(1000)
  end

end
