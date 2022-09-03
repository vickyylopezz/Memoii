require 'spec_helper'

describe 'Humano' do
  let(:humano) {FactoryPersonaje.new.crear_personaje("humano")}
  let(:mano) {FactoryArma.new.crear_arma("mano")}
  let(:espada) {FactoryArma.new.crear_arma("espada")}
  let(:estadio) {FactoryEscenario.new.crear_escenario("estadio")}
  let(:ciudad) {FactoryEscenario.new.crear_escenario("ciudad")}

  it '01-Puntaje de humano-con-mano es 1' do
    expect(humano.calcular_puntaje_con(mano)).to eq 1
  end

  it '02-Puntaje de humano-con-espada es 2' do
    expect(humano.calcular_puntaje_con(espada)).to eq 2
  end

  it '03-Puntaje de humano en estadio es 1' do
    expect(humano.calcular_puntaje_en(estadio)).to eq 1
  end

  it '04-Puntaje de humano en ciudad es 2' do
    expect(humano.calcular_puntaje_en(ciudad)).to eq 2
  end
end
