require 'spec_helper'

describe Camion do
  it 'coeficiente impositivo de camion con cilindrada 1000 es 2' do
    camion = Camion.new
    expect(camion.coeficiente_impositivo(1000)).to eq 2
  end

  it 'coeficiente impositivo de camion con cilindrada 1600 es 3' do
    camion = Camion.new
    expect(camion.coeficiente_impositivo(1600)).to eq 3
  end

  it 'coeficiente impositivo de camion con cilindrada 2000 es 4' do
    camion = Camion.new
    expect(camion.coeficiente_impositivo(2000)).to eq 4
  end

  it 'valor de mercado de camion con cilindrada 1000 y 1000 kilometros es 1000.0' do
    camion = Camion.new
    expect(camion.valor_mercado(1000, 1000)).to eq 1000.0
  end
end
