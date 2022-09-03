require 'spec_helper'

describe 'Luchador' do

  it '01-Puntaje de humano-con-espada en estadio es 2' do
    expect(Luchador.new(Humano.new, FactoryArma.new.crear_arma("espada"), Estadio.new).puntaje).to eq 2
    end
end
