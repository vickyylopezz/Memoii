require 'spec_helper'

describe Camion do
  it 'coeficiente impositivo de camion con cilindrada 1000 es 2' do
    camion = Camion.new
    expect(camion.calcular_coeficiente_impositivo(1000)).to eq 2
  end

  it 'coeficiente impositivo de camion con cilindrada 1600 es 3' do
    camion = Camion.new
    expect(camion.calcular_coeficiente_impositivo(1600)).to eq 3
  end
end
