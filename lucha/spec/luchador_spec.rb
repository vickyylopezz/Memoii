require 'spec_helper'

describe 'Luchador' do
  let(:espada) {FactoryArma.new.crear_arma("espada")}
  let(:mano) {FactoryArma.new.crear_arma("mano")}
  let(:cuchillo) {FactoryArma.new.crear_arma("cuchillo")}
  let(:humano) {FactoryPersonaje.new.crear_personaje("humano")}
  let(:lobo) {FactoryPersonaje.new.crear_personaje("lobo")}
  let(:estadio) {FactoryEscenario.new.crear_escenario("estadio")}
  let(:ciudad) {FactoryEscenario.new.crear_escenario("ciudad")}
  let(:lluvia) {FactoryEscenario.new.crear_escenario("lluvia")}
  let(:noche) {FactoryEscenario.new.crear_escenario("noche")}

  it '01-Puntaje de humano-con-espada en estadio es 3' do
    expect(Luchador.new(humano, espada, estadio).puntaje).to eq 3
  end

  it '02-Puntaje de humano-con-mano en estadio es 2' do
    expect(Luchador.new(humano, mano, estadio).puntaje).to eq 2
  end

  it '03-Puntaje de lobo-con-mano en estadio es 6' do
    expect(Luchador.new(lobo, mano, estadio).puntaje).to eq 6
  end

  it '04-Puntaje de lobo-con-espada en estadio es 9' do
    expect(Luchador.new(lobo, espada, estadio).puntaje).to eq 9
  end

  it '05-Puntaje de humano-con-espada en ciudad es 4' do
    expect(Luchador.new(humano, espada, ciudad).puntaje).to eq 4
  end

  it '06-Puntaje de humano-con-mano en ciudad es 3' do
    expect(Luchador.new(humano, mano, ciudad).puntaje).to eq 3
  end

  it '07-Puntaje de lobo-con-mano en ciudad es 6' do
    expect(Luchador.new(lobo, mano, ciudad).puntaje).to eq 6
  end

  it '08-Puntaje de lobo-con-espada en ciudad es 9' do
    expect(Luchador.new(lobo, espada, ciudad).puntaje).to eq 9
  end

  it '09-Puntaje de humano-con-espada en lluvia es 3' do
    expect(Luchador.new(humano, espada, lluvia).puntaje).to eq 3
  end

  it '10-Puntaje de humano-con-cuchillo en estadio es 4' do
    expect(Luchador.new(humano, cuchillo, estadio).puntaje).to eq 4
  end

  it '11-Puntaje de lobo-con-cuchillo en estadio es 8' do
    expect(Luchador.new(lobo, cuchillo, estadio).puntaje).to eq 8
  end

  it '12-Puntaje de humano-con-espada en lluvia es 3' do
    expect(Luchador.new(humano, espada, lluvia).puntaje).to eq 3
  end

  it '13-Puntaje de humano-con-mano en noche es 2' do
    expect(Luchador.new(humano, mano, noche).puntaje).to eq 2
  end
end
