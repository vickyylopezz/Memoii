require 'spec_helper'

describe 'App' do
  it 'coeficiente impositivo de auto con cilindrada 1000 y 1000 kiloemtros es 1 y valor de mercado 500.0' do
    resultado = `ruby app.rb auto/1000/1000`
    expect(resultado.strip).to eq "ci:1 & vm:500.0"
  end

  it 'coeficiente impositivo de auto con cilindrada 1600 y 1000 kiloemtros es 1 y valor de mercado 500.0' do
    resultado = `ruby app.rb auto/1600/1000`
    expect(resultado.strip).to eq "ci:1 & vm:500.0"
  end

  it 'coeficiente impositivo de auto con cilindrada 2000 y 1000 kiloemtros es 2 y valor de mercado 1000.0' do
    resultado = `ruby app.rb auto/2000/1000`
    expect(resultado.strip).to eq "ci:2 & vm:1000.0"
  end

  it 'coeficiente impositivo de camioneta con cilindrada 1000 y 1000 kiloemtros es 1 y valor de mercado 750.0' do
    resultado = `ruby app.rb camioneta/1000/1000`
    expect(resultado.strip).to eq "ci:1 & vm:750.0"
  end

  it 'coeficiente impositivo de camioneta con cilindrada 1600 es 2' do
    resultado = `ruby app.rb camioneta/1600/1000`
    expect(resultado.strip).to eq "ci:2 & vm:1153.8"
  end

  it 'coeficiente impositivo de camioneta con cilindrada 2000 es 3' do
    resultado = `ruby app.rb camioneta/2000/1000`
    expect(resultado.strip).to eq "ci:3 & vm:1500.0"
  end

  it 'coeficiente impositivo de camion con cilindrada 1000 es 2' do
    resultado = `ruby app.rb camion/1000/1000`
    expect(resultado.strip).to eq "ci:2 & vm:1000.0"
  end

  it 'coeficiente impositivo de camion con cilindrada 1600 es 3' do
    resultado = `ruby app.rb camion/1600/1000`
    expect(resultado.strip).to eq "ci:3 & vm:1153.8"
  end

  it 'coeficiente impositivo de camion con cilindrada 2000 es 4' do
    resultado = `ruby app.rb camion/2000/1000`
    expect(resultado.strip).to eq "ci:4 & vm:1333.3"
  end

  it 'vehiculo desconocido lanza error' do
    resultado = `ruby app.rb colectivo/2000/1000`
    expect(resultado.strip).to eq "error: vehiculo desconocido"
  end

  it 'cilindrada desconocida lanza error' do
    resultado = `ruby app.rb auto/5000/1000`
    expect(resultado.strip).to eq "error: cilindrada desconocida"
  end

end

