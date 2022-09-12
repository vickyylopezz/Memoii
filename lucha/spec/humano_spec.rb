require 'spec_helper'

describe 'Humano' do
  let(:humano) {FactoryPersonaje.new.crear_personaje("humano")}
  let(:mano) {FactoryArma.new.crear_arma("mano")}
  let(:espada) {FactoryArma.new.crear_arma("espada")}
  let(:cuchillo) {FactoryArma.new.crear_arma("cuchillo")}
  let(:estadio) {FactoryEscenario.new.crear_escenario("estadio")}
  let(:ciudad) {FactoryEscenario.new.crear_escenario("ciudad")}
  let(:noche) {FactoryEscenario.new.crear_escenario("noche")}
  let(:lluvia) {FactoryEscenario.new.crear_escenario("lluvia")}

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

  it '05-Puntaje de humano-con-cuchillo es 3' do
    expect(humano.calcular_puntaje_con(cuchillo)).to eq 3
  end

  it '06-Puntaje de humano en lluvia es 1' do
    expect(humano.calcular_puntaje_en(lluvia)).to eq 1
  end

  it '07-Puntaje de humano en noche es 1' do
    expect(humano.calcular_puntaje_en(noche)).to eq 1
  end
end
