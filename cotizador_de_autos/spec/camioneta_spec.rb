require 'spec_helper'

describe 'Camioneta' do
  it 'coeficiente impositivo de camioneta con cilindrada 1000 es 1' do
    camioneta = Camioneta.new
    expect(camioneta.coeficiente_impositivo(1000)).to eq 1
  end

  it 'coeficiente impositivo de camioneta con cilindrada 1600 es 2' do
    camioneta = Camioneta.new
    expect(camioneta.coeficiente_impositivo(1600)).to eq 2
  end

  it 'coeficiente impositivo de camioneta con cilindrada 2000 es 3' do
    camioneta = Camioneta.new
    expect(camioneta.coeficiente_impositivo(2000)).to eq 3
  end

  it 'valor de mercado de camioneta con cilindrada 1000 y 1000 kilometros es 750.0' do
    camioneta = Camioneta.new
    expect(camioneta.valor_mercado(1000, 1000)).to eq 750.0
  end

  it 'valor de mercado de camioneta con cilindrada 1600 y 1000 kilometros es 1153.8' do
    camioneta = Camioneta.new
    expect(camioneta.valor_mercado(1000, 1600)).to eq 1153.8
  end

  it 'valor de mercado de camioneta con cilindrada 2000 y 1000 kilometros es 1500.0' do
    camioneta = Camioneta.new
    expect(camioneta.valor_mercado(1000, 2000)).to eq 1500.0
  end
end
