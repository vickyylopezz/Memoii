require 'spec_helper'

describe 'Luchador' do

  it '01-Puntaje de humano-con-espada en estadio es 2' do
    expect(Luchador.new(Humano.new, FactoryArma.new.crear_arma("espada"), Estadio.new).puntaje).to eq 2
  end

  it '02-Puntaje de humano-con-mano en estadio es 1' do
    expect(Luchador.new(Humano.new, FactoryArma.new.crear_arma("mano"), Estadio.new).puntaje).to eq 1
  end

  it '03-Puntaje de lobo-con-mano en estadio es 3' do
    expect(Luchador.new(Lobo.new, FactoryArma.new.crear_arma("mano"), Estadio.new).puntaje).to eq 3
  end

end
