require 'spec_helper'

describe 'Enfrentamiento' do
  let(:enfrentamiento) { Enfrentamiento.new }

  it 'Humano-con-espada vs Humano-con-espada en estadio da como resultado empate' do
    expect(enfrentamiento.luchar(Luchador.new(Humano.new, FactoryArma.new.crear_arma("espada"), Estadio.new), Luchador.new(Humano.new, FactoryArma.new.crear_arma("espada"), Estadio.new))).to eq  'empate'
  end

  it 'Humano-con-espada vs Humano-con-mano en estadio da como resultado gana 1' do
    expect(enfrentamiento.luchar(Luchador.new(Humano.new, FactoryArma.new.crear_arma("espada"), Estadio.new), Luchador.new(Humano.new, FactoryArma.new.crear_arma("mano"), Estadio.new))).to eq  'gana 1'
  end

  it 'Humano-con-mano vs Humano-con-mano en estadio da como resultado empate' do
    expect(enfrentamiento.luchar(Luchador.new(Humano.new, FactoryArma.new.crear_arma("mano"), Estadio.new), Luchador.new(Humano.new, FactoryArma.new.crear_arma("mano"), Estadio.new))).to eq  'empate'
  end

  it 'Humano-con-mano vs Humano-con-espada en estadio da como resultado gana 2' do
    expect(enfrentamiento.luchar(Luchador.new(Humano.new, FactoryArma.new.crear_arma("mano"), Estadio.new), Luchador.new(Humano.new, FactoryArma.new.crear_arma("espada"), Estadio.new))).to eq  'gana 2'
  end

  it 'Humano-con-mano vs Lobo-con-mano en estadio da como resultado gana 2' do
    expect(enfrentamiento.luchar(Luchador.new(Humano.new, FactoryArma.new.crear_arma("mano"), Estadio.new), Luchador.new(Lobo.new, FactoryArma.new.crear_arma("mano"), Estadio.new))).to eq  'gana 2'
  end

  it 'Humano-con-espada vs Lobo-con-espada en estadio da como resultado gana 2' do
    expect(enfrentamiento.luchar(Luchador.new(Humano.new, FactoryArma.new.crear_arma("espada"), Estadio.new), Luchador.new(Lobo.new, FactoryArma.new.crear_arma("esapda"), Estadio.new))).to eq  'gana 2'
  end
end
