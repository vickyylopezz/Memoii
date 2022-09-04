require 'spec_helper'

describe 'Humano' do
  let(:vampiro) {FactoryPersonaje.new.crear_personaje("vampiro")}
  let(:espada) {FactoryArma.new.crear_arma("espada")}
  let(:mano) {FactoryArma.new.crear_arma("mano")}
  let(:noche) {FactoryEscenario.new.crear_escenario("noche")}

  it '01-Puntaje de Vampiro-con-espada es 4' do
    expect(vampiro.calcular_puntaje_con(espada)).to eq 4
  end

  it '02-Puntaje de Vampiro-con-mano es 2' do
    expect(vampiro.calcular_puntaje_con(mano)).to eq 2
  end

  it '03-Puntaje de vampiro en noche es 4' do
    expect(vampiro.calcular_puntaje_en(noche)).to eq 4
  end

end
