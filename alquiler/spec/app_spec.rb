require 'spec_helper'

describe 'App' do
  it 'alquiler de 2 horas es 200' do
    resultado = `ruby app.rb 20190119 20190119 20112223336 h 2`
    expect(resultado.strip).to eq "200"
  end
end
