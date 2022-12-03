require 'spec_helper'

describe 'Camioneta' do
  it 'coeficiente impositivo de camioneta con cilindrada 1000 es 1' do
    camioneta = Camioneta.new
    expect(camioneta.calcular_coeficiente_impositivo(1000)).to eq 1
  end

  it 'coeficiente impositivo de camioneta con cilindrada 1600 es 2' do
    camioneta = Camioneta.new
    expect(camioneta.calcular_coeficiente_impositivo(1600)).to eq 2
  end

  it 'coeficiente impositivo de camioneta con cilindrada 2000 es 3' do
    camioneta = Camioneta.new
    expect(camioneta.calcular_coeficiente_impositivo(2000)).to eq 3
  end
end
