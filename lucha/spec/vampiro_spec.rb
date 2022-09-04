require 'spec_helper'

describe 'Humano' do
  let(:vampiro) {FactoryPersonaje.new.crear_personaje("vampiro")}
  let(:espada) {FactoryArma.new.crear_arma("espada")}

  it '01-Puntaje de Vampiro-con-espada es 8' do
    expect(vampiro.calcular_puntaje_con(espada)).to eq 8
  end
end
