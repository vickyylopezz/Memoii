require 'spec_helper'

describe 'Auto' do
  it 'coeficiente impositivo de auto con cilindrada 1000 es 1' do
    auto = Auto.new
    expect(auto.calcular_coeficiente_impositivo(1000)).to eq 1
  end

  it 'coeficiente impositivo de auto con cilindrada 1600 es 1' do
    auto = Auto.new
    expect(auto.calcular_coeficiente_impositivo(1600)).to eq 1
  end

  it 'coeficiente impositivo de auto con cilindrada 2000 es 2' do
    auto = Auto.new
    expect(auto.calcular_coeficiente_impositivo(2000)).to eq 2
  end

  it 'valor de mercado de auto con cilindrada 1000 y 1000 kilometros es 500.0' do
    auto = Auto.new
    expect(auto.calcular_valor_mercado(1000, 1000)).to eq 500.0
  end
end
