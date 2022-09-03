require 'spec_helper'

describe 'Enfrentamiento' do
  let(:enfrentamiento) { Enfrentamiento.new }

  it '01-Humano-con-espada vs Humano-con-espada en estadio da como resultado empate' do
    expect(enfrentamiento.luchar(Luchador.new(Humano.new, FactoryArma.new.crear_arma("espada"), Estadio.new), Luchador.new(Humano.new, FactoryArma.new.crear_arma("espada"), Estadio.new))).to eq  'empate'
  end

  it '02-Humano-con-espada vs Humano-con-mano en estadio da como resultado gana 1' do
    expect(enfrentamiento.luchar(Luchador.new(Humano.new, FactoryArma.new.crear_arma("espada"), Estadio.new), Luchador.new(Humano.new, FactoryArma.new.crear_arma("mano"), Estadio.new))).to eq  'gana 1'
  end

  it '03-Humano-con-mano vs Humano-con-mano en estadio da como resultado empate' do
    expect(enfrentamiento.luchar(Luchador.new(Humano.new, FactoryArma.new.crear_arma("mano"), Estadio.new), Luchador.new(Humano.new, FactoryArma.new.crear_arma("mano"), Estadio.new))).to eq  'empate'
  end

  it '04-Humano-con-mano vs Humano-con-espada en estadio da como resultado gana 2' do
    expect(enfrentamiento.luchar(Luchador.new(Humano.new, FactoryArma.new.crear_arma("mano"), Estadio.new), Luchador.new(Humano.new, FactoryArma.new.crear_arma("espada"), Estadio.new))).to eq  'gana 2'
  end

  it '05-Humano-con-mano vs Lobo-con-mano en estadio da como resultado gana 2' do
    expect(enfrentamiento.luchar(Luchador.new(Humano.new, FactoryArma.new.crear_arma("mano"), Estadio.new), Luchador.new(Lobo.new, FactoryArma.new.crear_arma("mano"), Estadio.new))).to eq  'gana 2'
  end

  it '06-Humano-con-espada vs Lobo-con-espada en estadio da como resultado gana 2' do
    expect(enfrentamiento.luchar(Luchador.new(Humano.new, FactoryArma.new.crear_arma("espada"), Estadio.new), Luchador.new(Lobo.new, FactoryArma.new.crear_arma("espada"), Estadio.new))).to eq  'gana 2'
  end

  it '07-Lobo-con-mano vs Humano-con-mano en estadio da como resultado gana 1' do
    expect(enfrentamiento.luchar(Luchador.new(Lobo.new, FactoryArma.new.crear_arma("mano"), Estadio.new), Luchador.new(Humano.new, FactoryArma.new.crear_arma("mano"), Estadio.new))).to eq  'gana 1'
  end

  it '08- Lobo-con-espada vs Humano-con-espada en estadio da como resultado gana 1' do
    expect(enfrentamiento.luchar(Luchador.new(Lobo.new, FactoryArma.new.crear_arma("espada"), Estadio.new), Luchador.new(Humano.new, FactoryArma.new.crear_arma("espada"), Estadio.new))).to eq  'gana 1'
  end

  it '09-Humano-con-espada vs Lobo-con-mano en estadio da como resultado gana 2' do
    expect(enfrentamiento.luchar(Luchador.new(Humano.new, FactoryArma.new.crear_arma("espada"), Estadio.new), Luchador.new(Lobo.new, FactoryArma.new.crear_arma("mano"), Estadio.new))).to eq  'gana 2'
  end

  it '10-Humano-con-mano vs Lobo-con-espada en estadio da como resultado gana 2' do
    expect(enfrentamiento.luchar(Luchador.new(Humano.new, FactoryArma.new.crear_arma("mano"), Estadio.new), Luchador.new(Lobo.new, FactoryArma.new.crear_arma("espada"), Estadio.new))).to eq  'gana 2'
  end
end
