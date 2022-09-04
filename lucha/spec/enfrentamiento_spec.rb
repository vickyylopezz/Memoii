require 'spec_helper'

describe 'Enfrentamiento' do
  let(:enfrentamiento) { Enfrentamiento.new }
  let(:espada) {FactoryArma.new.crear_arma("espada")}
  let(:mano) {FactoryArma.new.crear_arma("mano")}
  let(:cuchillo) {FactoryArma.new.crear_arma("cuchillo")}
  let(:humano) {FactoryPersonaje.new.crear_personaje("humano")}
  let(:lobo) {FactoryPersonaje.new.crear_personaje("lobo")}
  let(:vampiro) {FactoryPersonaje.new.crear_personaje("vampiro")}
  let(:noche) {FactoryEscenario.new.crear_escenario("noche")}
  let(:estadio) {FactoryEscenario.new.crear_escenario("estadio")}
  let(:ciudad) {FactoryEscenario.new.crear_escenario("ciudad")}
  let(:lluvia) {FactoryEscenario.new.crear_escenario("lluvia")}
  let(:bosque) {FactoryEscenario.new.crear_escenario("bosque")}

  it '01-Humano-con-espada vs Humano-con-espada en estadio da como resultado empate' do
    expect(enfrentamiento.luchar(Luchador.new(humano, espada, estadio), Luchador.new(humano, espada, estadio))).to eq  'empate'
  end

  it '02-Humano-con-espada vs Humano-con-mano en estadio da como resultado gana 1' do
    expect(enfrentamiento.luchar(Luchador.new(humano, espada, estadio), Luchador.new(humano, mano, estadio))).to eq  'gana 1'
  end

  it '03-Humano-con-mano vs Humano-con-mano en estadio da como resultado empate' do
    expect(enfrentamiento.luchar(Luchador.new(humano, mano, estadio), Luchador.new(humano, mano, estadio))).to eq  'empate'
  end

  it '04-Humano-con-mano vs Humano-con-espada en estadio da como resultado gana 2' do
    expect(enfrentamiento.luchar(Luchador.new(humano, mano, estadio), Luchador.new(humano, espada, estadio))).to eq  'gana 2'
  end

  it '05-Humano-con-mano vs Lobo-con-mano en estadio da como resultado gana 2' do
    expect(enfrentamiento.luchar(Luchador.new(humano, mano, estadio), Luchador.new(lobo, mano, estadio))).to eq  'gana 2'
  end

  it '06-Humano-con-espada vs Lobo-con-espada en estadio da como resultado gana 2' do
    expect(enfrentamiento.luchar(Luchador.new(humano, espada, estadio), Luchador.new(lobo, espada, estadio))).to eq  'gana 2'
  end

  it '07-Lobo-con-mano vs Humano-con-mano en estadio da como resultado gana 1' do
    expect(enfrentamiento.luchar(Luchador.new(lobo, mano, estadio), Luchador.new(humano, mano, estadio))).to eq  'gana 1'
  end

  it '08- Lobo-con-espada vs Humano-con-espada en estadio da como resultado gana 1' do
    expect(enfrentamiento.luchar(Luchador.new(lobo, espada, estadio), Luchador.new(humano, espada, estadio))).to eq  'gana 1'
  end

  it '09-Humano-con-espada vs Lobo-con-mano en estadio da como resultado gana 2' do
    expect(enfrentamiento.luchar(Luchador.new(humano, espada, estadio), Luchador.new(lobo, mano, estadio))).to eq  'gana 2'
  end

  it '10-Humano-con-mano vs Lobo-con-espada en estadio da como resultado gana 2' do
    expect(enfrentamiento.luchar(Luchador.new(humano, mano, estadio), Luchador.new(lobo, espada, estadio))).to eq  'gana 2'
  end

  it '11-Lobo-con-espada vs Humano-con-mano en estadio da como resultado gana 1' do
    expect(enfrentamiento.luchar(Luchador.new(lobo, espada, estadio), Luchador.new(humano, mano, estadio))).to eq  'gana 1'
  end

  it '12-Lobo-con-mano vs Humano-con-espada en estadio da como resultado gana 1' do
    expect(enfrentamiento.luchar(Luchador.new(lobo, mano, estadio), Luchador.new(humano, espada, estadio))).to eq  'gana 1'
  end

  it '13-Lobo-con-espada vs Lobo-con-mano en estadio da como resultado gana 1' do
    expect(enfrentamiento.luchar(Luchador.new(lobo, espada, estadio), Luchador.new(lobo, mano, estadio))).to eq  'gana 1'
  end

  it '14-Lobo-con-mano vs Lobo-con-espada en estadio da como resultado gana 2' do
    expect(enfrentamiento.luchar(Luchador.new(lobo, mano, estadio), Luchador.new(lobo, espada, estadio))).to eq  'gana 2'
  end

  it '15-Lobo-con-espada vs Lobo-con-espada en estadio da como resultado empate' do
    expect(enfrentamiento.luchar(Luchador.new(lobo, espada, estadio), Luchador.new(lobo, espada, estadio))).to eq  'empate'
  end

  it '16-Lobo-con-mano vs Lobo-con-mano en estadio da como resultado empate' do
    expect(enfrentamiento.luchar(Luchador.new(lobo, mano, estadio), Luchador.new(lobo, mano, estadio))).to eq  'empate'
  end

  it '17-Humano-con-espada vs Lobo-con-mano en ciudad da como resultado gana 2' do
    expect(enfrentamiento.luchar(Luchador.new(humano, espada, ciudad), Luchador.new(lobo, mano, ciudad))).to eq  'gana 2'
  end

  it '18-Humano-con-espada vs Humano-con-espada en ciudad da como resultado empate' do
    expect(enfrentamiento.luchar(Luchador.new(humano, espada, ciudad), Luchador.new(humano, espada, ciudad))).to eq  'empate'
  end

  it '19-Humano-con-mano vs Lobo-con-espada en ciudad da como resultado gana 2' do
    expect(enfrentamiento.luchar(Luchador.new(humano, mano, ciudad), Luchador.new(lobo, espada, ciudad))).to eq  'gana 2'
  end

  it '20-Humano-con-espada vs Humano-con-mano en ciudad da como resultado gana 1' do
    expect(enfrentamiento.luchar(Luchador.new(humano, espada, ciudad), Luchador.new(humano, mano, ciudad))).to eq  'gana 1'
  end

  it '21-Vampiro-con-espada vs Lobo-con-mano en noche da como resultado gana 1' do
    expect(enfrentamiento.luchar(Luchador.new(vampiro, espada, noche), Luchador.new(lobo, mano, noche))).to eq  'gana 1'
  end

  it '22-Lobo-con-espada vs Lobo-con-mano en noche da como resultado gana 1' do
    expect(enfrentamiento.luchar(Luchador.new(lobo, espada, noche), Luchador.new(lobo, mano, noche))).to eq  'gana 1'
  end

  it '23-Humano-con-mano vs Lobo-con-espada en noche da como resultado gana 2' do
    expect(enfrentamiento.luchar(Luchador.new(humano, mano, noche), Luchador.new(lobo, espada, noche))).to eq  'gana 2'
  end

  it '24-Vampiro-con-espada vs Vampiro-con-espada en noche da como resultado empate' do
    expect(enfrentamiento.luchar(Luchador.new(vampiro, espada, noche), Luchador.new(vampiro, espada, noche))).to eq  'empate'
  end

  it '25-Vampiro-con-espada vs Lobo-con-espada en noche da como resultado gana 2' do
    expect(enfrentamiento.luchar(Luchador.new(vampiro, espada, noche), Luchador.new(lobo, espada, noche))).to eq  'gana 2'
  end

  it '26-Vampiro-con-mano vs Humano-con-espada en ciudad da como resultado empate' do
    expect(enfrentamiento.luchar(Luchador.new(vampiro, mano, ciudad), Luchador.new(humano, espada, ciudad))).to eq  'empate'
  end

  it '27-Vampiro-con-cuchillo vs Lobo-con-mano en lluvia da como resultado gana 2' do
    expect(enfrentamiento.luchar(Luchador.new(vampiro, cuchillo, lluvia), Luchador.new(lobo, mano, lluvia))).to eq  'gana 2'
  end

  it '28-Vampiro-con-espada vs Humano-con-cuchillo en noche da como resultado gana 1' do
    expect(enfrentamiento.luchar(Luchador.new(vampiro, espada, noche), Luchador.new(humano, cuchillo, noche))).to eq  'gana 1'
  end

  it '29-Lobo-con-cuchillo vs Humano-con-cuchillo en noche da como resultado gana 1' do
    expect(enfrentamiento.luchar(Luchador.new(lobo, cuchillo, noche), Luchador.new(humano, cuchillo, noche))).to eq  'gana 1'
  end

  it '30-Vampiro-con-mano vs Humano-con-espada en ciudad da como resultado empate' do
    expect(enfrentamiento.luchar(Luchador.new(vampiro, mano, ciudad), Luchador.new(humano, espada, ciudad))).to eq  'empate'
  end

  it '31-Humano-con-espada vs Lobo-con-cuchillo en bosque da como resultado gana 2' do
    expect(enfrentamiento.luchar(Luchador.new(humano, espada, bosque), Luchador.new(lobo, cuchillo, bosque))).to eq  'gana 2'
  end

end
