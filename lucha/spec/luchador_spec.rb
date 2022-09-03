require 'spec_helper'

describe 'Luchador' do
  let(:espada) {FactoryArma.new.crear_arma("espada")}
  let(:mano) {FactoryArma.new.crear_arma("mano")}
  let(:humano) {FactoryPersonaje.new.crear_personaje("humano")}
  let(:lobo) {FactoryPersonaje.new.crear_personaje("lobo")}

  it '01-Puntaje de humano-con-espada en estadio es 3' do
    expect(Luchador.new(humano, espada, Estadio.new).puntaje).to eq 3
  end

  it '02-Puntaje de humano-con-mano en estadio es 2' do
    expect(Luchador.new(humano, mano, Estadio.new).puntaje).to eq 2
  end

  it '03-Puntaje de lobo-con-mano en estadio es 6' do
    expect(Luchador.new(lobo, mano, Estadio.new).puntaje).to eq 6
  end

  it '04-Puntaje de lobo-con-espada en estadio es 9' do
    expect(Luchador.new(lobo, espada, Estadio.new).puntaje).to eq 9
  end

  it '05-Puntaje de humano-con-espada en ciudad es 4' do
    expect(Luchador.new(humano, espada, Ciudad.new).puntaje).to eq 4
  end

  it '06-Puntaje de humano-con-mano en ciudad es 3' do
    expect(Luchador.new(humano, mano, Ciudad.new).puntaje).to eq 3
  end

  it '07-Puntaje de lobo-con-mano en ciudad es 6' do
    expect(Luchador.new(Lobo.new, FactoryArma.new.crear_arma("mano"), Ciudad.new).puntaje).to eq 6
  end

  it '08-Puntaje de lobo-con-espada en ciudad es 9' do
    expect(Luchador.new(Lobo.new, FactoryArma.new.crear_arma("espada"), Ciudad.new).puntaje).to eq 9
  end
end
