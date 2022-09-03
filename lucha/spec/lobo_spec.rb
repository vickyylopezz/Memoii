require 'spec_helper'

describe 'Humano' do
  let(:lobo) {FactoryPersonaje.new.crear_personaje("lobo")}
  let(:mano) {FactoryArma.new.crear_arma("mano")}
  let(:espada) {FactoryArma.new.crear_arma("espada")}
  let(:estadio) {FactoryEscenario.new.crear_escenario("estadio")}
  let(:ciudad) {FactoryEscenario.new.crear_escenario("ciudad")}

  it '01-Puntaje de lobo-con-mano es 3' do
    expect(lobo.calcular_puntaje_con(mano)).to eq 3
  end

  it '02-Puntaje de lobo-con-espada es 6' do
    expect(lobo.calcular_puntaje_con(espada)).to eq 6
  end

  it '03-Puntaje de lobo en estadio es 3' do
    expect(lobo.calcular_puntaje_es(estadio)).to eq 3
  end

  it '04-Puntaje de lobo en ciudad es 3' do
    expect(lobo.calcular_puntaje_es(ciudad)).to eq 3
  end
end
