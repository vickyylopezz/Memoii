require 'spec_helper'

describe 'Cotizador' do
  it 'coeficiente impositivo de auto con cilindrada 1000 es 1' do
    auto = Auto.new
    cotizador = Cotizador.new()
    expect(cotizador.calcular_coeficiente_impositivo(auto, 1000)).to eq 1
  end

  it 'coeficiente impositivo de auto con cilindrada 1600 es 1' do
    auto = Auto.new
    cotizador = Cotizador.new()
    expect(cotizador.calcular_coeficiente_impositivo(auto, 1600)).to eq 1
  end

  it 'coeficiente impositivo de auto con cilindrada 2000 es 2' do
    auto = Auto.new
    cotizador = Cotizador.new()
    expect(cotizador.calcular_coeficiente_impositivo(auto, 2000)).to eq 2
  end

  it 'coeficiente impositivo de camioneta con cilindrada 1000 es 1' do
    camioneta = Camioneta.new
    cotizador = Cotizador.new()
    expect(cotizador.calcular_coeficiente_impositivo(camioneta, 1000)).to eq 1
  end

  it 'coeficiente impositivo de camioneta con cilindrada 1600 es 2' do
    camioneta = Camioneta.new
    cotizador = Cotizador.new()
    expect(cotizador.calcular_coeficiente_impositivo(camioneta, 1600)).to eq 2
  end

  it 'coeficiente impositivo de camioneta con cilindrada 2000 es 3' do
    camioneta = Camioneta.new
    cotizador = Cotizador.new()
    expect(cotizador.calcular_coeficiente_impositivo(camioneta, 2000)).to eq 3
  end

  it 'coeficiente impositivo de camion con cilindrada 1000 es 2' do
    camion = Camion.new
    cotizador = Cotizador.new()
    expect(cotizador.calcular_coeficiente_impositivo(camion, 1000)).to eq 2
  end

  it 'coeficiente impositivo de camion con cilindrada 1600 es 3' do
    camion = Camion.new
    cotizador = Cotizador.new()
    expect(cotizador.calcular_coeficiente_impositivo(camion, 1600)).to eq 3
  end

  it 'coeficiente impositivo de camion con cilindrada 2000 es 4' do
    camion = Camion.new
    cotizador = Cotizador.new()
    expect(cotizador.calcular_coeficiente_impositivo(camion, 2000)).to eq 4
  end
end
