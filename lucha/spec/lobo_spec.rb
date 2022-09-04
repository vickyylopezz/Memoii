require 'spec_helper'

describe 'Lobo' do
  let(:lobo) {FactoryPersonaje.new.crear_personaje("lobo")}
  let(:mano) {FactoryArma.new.crear_arma("mano")}
  let(:espada) {FactoryArma.new.crear_arma("espada")}
  let(:cuchillo) {FactoryArma.new.crear_arma("cuchillo")}
  let(:estadio) {FactoryEscenario.new.crear_escenario("estadio")}
  let(:ciudad) {FactoryEscenario.new.crear_escenario("ciudad")}
  let(:noche) {FactoryEscenario.new.crear_escenario("noche")}
  let(:lluvia) {FactoryEscenario.new.crear_escenario("lluvia")}

  it '01-Puntaje de lobo-con-mano es 3' do
    expect(lobo.calcular_puntaje_con(mano)).to eq 3
  end

  it '02-Puntaje de lobo-con-espada es 6' do
    expect(lobo.calcular_puntaje_con(espada)).to eq 6
  end

  it '03-Puntaje de lobo en estadio es 3' do
    expect(lobo.calcular_puntaje_en(estadio)).to eq 3
  end

  it '04-Puntaje de lobo en ciudad es 3' do
    expect(lobo.calcular_puntaje_en(ciudad)).to eq 3
  end

  it '05-Puntaje de lobo-con-cuchillo es 5' do
    expect(lobo.calcular_puntaje_con(cuchillo)).to eq 5
  end

  it '06-Puntaje de lobo en noche es 3' do
    expect(lobo.calcular_puntaje_en(noche)).to eq 3
  end

  it '07-Puntaje de lobo en lluvia es 3' do
    expect(lobo.calcular_puntaje_en(lluvia)).to eq 3
  end
end
