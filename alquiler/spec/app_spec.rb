require 'spec_helper'

describe 'App' do
  it 'alquiler de 2 horas es 200' do
    resultado = `ruby app.rb 20190119 20190119 20112223336 h 2`
    expect(resultado.strip).to eq "importe: 200"
  end

  it 'alquiler de 1 dia es 2000' do
    resultado = `ruby app.rb 20190119 20190119 20112223336 d 1`
    expect(resultado.strip).to eq "importe: 2000"
  end

  it 'sin entrada muestra error' do
    resultado = `ruby app.rb`
    expect(resultado.strip).to eq 'error: entrada requerida'
  end

  it 'sin entrada muestra error' do
    resultado = `ruby app.rb 20190119`
    expect(resultado.strip).to eq 'error: entrada requerida'
  end


end

