require 'spec_helper'

describe 'App' do
  it 'coeficiente imporitivo de auto con cilindrada 1000 es 1' do
    resultado = `ruby app.rb auto/1000`
    expect(resultado.strip).to eq "ci:1"
  end

  it 'coeficiente imporitivo de auto con cilindrada 1600 es 1,6' do
    resultado = `ruby app.rb auto/1600`
    expect(resultado.strip).to eq "ci:1.6"
  end
end

