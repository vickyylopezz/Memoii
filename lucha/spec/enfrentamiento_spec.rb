require 'spec_helper'

describe 'Enfrentamiento' do
  let(:enfrentamiento) { Enfrentamiento.new }
  let(:espada) {FactoryArma.new.crear_arma("espada")}
  let(:mano) {FactoryArma.new.crear_arma("mano")}
  let(:humano) {FactoryPersonaje.new.crear_personaje("humano")}
  let(:lobo) {FactoryPersonaje.new.crear_personaje("lobo")}

  it '01-Humano-con-espada vs Humano-con-espada en estadio da como resultado empate' do
    expect(enfrentamiento.luchar(Luchador.new(humano, espada, Estadio.new), Luchador.new(humano, espada, Estadio.new))).to eq  'empate'
  end

  it '02-Humano-con-espada vs Humano-con-mano en estadio da como resultado gana 1' do
    expect(enfrentamiento.luchar(Luchador.new(humano, espada, Estadio.new), Luchador.new(humano, mano, Estadio.new))).to eq  'gana 1'
  end

  it '03-Humano-con-mano vs Humano-con-mano en estadio da como resultado empate' do
    expect(enfrentamiento.luchar(Luchador.new(humano, mano, Estadio.new), Luchador.new(humano, mano, Estadio.new))).to eq  'empate'
  end

  it '04-Humano-con-mano vs Humano-con-espada en estadio da como resultado gana 2' do
    expect(enfrentamiento.luchar(Luchador.new(humano, mano, Estadio.new), Luchador.new(humano, espada, Estadio.new))).to eq  'gana 2'
  end

  it '05-Humano-con-mano vs Lobo-con-mano en estadio da como resultado gana 2' do
    expect(enfrentamiento.luchar(Luchador.new(humano, mano, Estadio.new), Luchador.new(lobo, mano, Estadio.new))).to eq  'gana 2'
  end

  it '06-Humano-con-espada vs Lobo-con-espada en estadio da como resultado gana 2' do
    expect(enfrentamiento.luchar(Luchador.new(humano, espada, Estadio.new), Luchador.new(lobo, espada, Estadio.new))).to eq  'gana 2'
  end

  it '07-Lobo-con-mano vs Humano-con-mano en estadio da como resultado gana 1' do
    expect(enfrentamiento.luchar(Luchador.new(lobo, mano, Estadio.new), Luchador.new(humano, mano, Estadio.new))).to eq  'gana 1'
  end

  it '08- Lobo-con-espada vs Humano-con-espada en estadio da como resultado gana 1' do
    expect(enfrentamiento.luchar(Luchador.new(lobo, espada, Estadio.new), Luchador.new(humano, espada, Estadio.new))).to eq  'gana 1'
  end

  it '09-Humano-con-espada vs Lobo-con-mano en estadio da como resultado gana 2' do
    expect(enfrentamiento.luchar(Luchador.new(humano, espada, Estadio.new), Luchador.new(lobo, FactoryArma.new.crear_arma("mano"), Estadio.new))).to eq  'gana 2'
  end

  it '10-Humano-con-mano vs Lobo-con-espada en estadio da como resultado gana 2' do
    expect(enfrentamiento.luchar(Luchador.new(humano, FactoryArma.new.crear_arma("mano"), Estadio.new), Luchador.new(lobo, espada, Estadio.new))).to eq  'gana 2'
  end

  it '11-Lobo-con-espada vs Humano-con-mano en estadio da como resultado gana 1' do
    expect(enfrentamiento.luchar(Luchador.new(lobo, espada, Estadio.new), Luchador.new(humano, mano, Estadio.new))).to eq  'gana 1'
  end

  it '12-Lobo-con-mano vs Humano-con-espada en estadio da como resultado gana 1' do
    expect(enfrentamiento.luchar(Luchador.new(lobo, mano, Estadio.new), Luchador.new(humano, espada, Estadio.new))).to eq  'gana 1'
  end

  it '13-Lobo-con-espada vs Lobo-con-mano en estadio da como resultado gana 1' do
    expect(enfrentamiento.luchar(Luchador.new(lobo, espada, Estadio.new), Luchador.new(lobo, mano, Estadio.new))).to eq  'gana 1'
  end

  it '14-Lobo-con-mano vs Lobo-con-espada en estadio da como resultado gana 2' do
    expect(enfrentamiento.luchar(Luchador.new(lobo, mano, Estadio.new), Luchador.new(lobo, espada, Estadio.new))).to eq  'gana 2'
  end

  it '15-Lobo-con-espada vs Lobo-con-espada en estadio da como resultado empate' do
    expect(enfrentamiento.luchar(Luchador.new(lobo, espada, Estadio.new), Luchador.new(lobo, espada, Estadio.new))).to eq  'empate'
  end

  it '16-Lobo-con-mano vs Lobo-con-mano en estadio da como resultado empate' do
    expect(enfrentamiento.luchar(Luchador.new(lobo, mano, Estadio.new), Luchador.new(lobo, mano, Estadio.new))).to eq  'empate'
  end

  it '17-Humano-con-espada vs Lobo-con-mano en ciudad da como resultado gana 1' do
    expect(enfrentamiento.luchar(Luchador.new(humano, espada, Ciudad.new), Luchador.new(lobo, mano, Ciudad.new))).to eq  'gana 1'
  end

  it '18-Humano-con-espada vs Humano-con-espada en ciudad da como resultado empate' do
    expect(enfrentamiento.luchar(Luchador.new(humano, espada, Ciudad.new), Luchador.new(humano, espada, Ciudad.new))).to eq  'empate'
  end

  it '19-Humano-con-mano vs Lobo-con-espada en ciudad da como resultado gana 2' do
    expect(enfrentamiento.luchar(Luchador.new(humano, mano, Ciudad.new), Luchador.new(lobo, espada, Ciudad.new))).to eq  'gana 2'
  end

  it '20-Humano-con-espada vs Humano-con-mano en ciudad da como resultado gana 1' do
    expect(enfrentamiento.luchar(Luchador.new(humano, espada, Ciudad.new), Luchador.new(humano, mano, Ciudad.new))).to eq  'gana 1'
  end

end
