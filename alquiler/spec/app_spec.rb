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

  it 'entrada incompleta muestra error' do
    resultado = `ruby app.rb 20190119`
    expect(resultado.strip).to eq 'error: entrada requerida'
  end

  it 'alquiler de 3 dias una empresa es 5700' do
    resultado = `ruby app.rb 20190119 20190119 26112223336 d 3`
    expect(resultado.strip).to eq "importe: 5700.0"
  end

  it 'alquiler de 5 dias una empresa con recargo es 19000' do
    resultado = `ruby app.rb 20190119 20190127 26112223336 d 5`
    expect(resultado.strip).to eq "importe: 19000.0"
  end

  it 'alquiler de 3 dias es 6000' do
    resultado = `ruby app.rb 20190131 20190203 20112223336 d 3`
    expect(resultado.strip).to eq "importe: 6000"
  end

end

