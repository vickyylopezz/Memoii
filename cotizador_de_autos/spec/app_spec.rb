require 'spec_helper'

describe 'App' do
  it 'coeficiente impositivo de auto con cilindrada 1000 es 1' do
    resultado = `ruby app.rb auto/1000/1000`
    expect(resultado.strip).to eq "ci:1 & vm:500.0"
  end

  xit 'coeficiente impositivo de auto con cilindrada 1600 es 1' do
    resultado = `ruby app.rb auto/1600`
    expect(resultado.strip).to eq "ci:1"
  end

  xit 'coeficiente impositivo de auto con cilindrada 2000 es 2' do
    resultado = `ruby app.rb auto/2000`
    expect(resultado.strip).to eq "ci:2"
  end

  xit 'coeficiente impositivo de camioneta con cilindrada 1000 es 1' do
    resultado = `ruby app.rb camioneta/1000`
    expect(resultado.strip).to eq "ci:1"
  end

  xit 'coeficiente impositivo de camioneta con cilindrada 1600 es 2' do
    resultado = `ruby app.rb camioneta/1600`
    expect(resultado.strip).to eq "ci:2"
  end

  xit 'coeficiente impositivo de camioneta con cilindrada 2000 es 3' do
    resultado = `ruby app.rb camioneta/2000`
    expect(resultado.strip).to eq "ci:3"
  end

  xit 'coeficiente impositivo de camion con cilindrada 1000 es 2' do
    resultado = `ruby app.rb camion/1000`
    expect(resultado.strip).to eq "ci:2"
  end

  xit 'coeficiente impositivo de camion con cilindrada 1600 es 3' do
    resultado = `ruby app.rb camion/1600`
    expect(resultado.strip).to eq "ci:3"
  end

  xit 'coeficiente impositivo de camion con cilindrada 2000 es 4' do
    resultado = `ruby app.rb camion/2000`
    expect(resultado.strip).to eq "ci:4"
  end
end

