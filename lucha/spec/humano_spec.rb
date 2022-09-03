require 'spec_helper'

describe 'Humano' do
  let(:humano) {FactoryPersonaje.new.crear_personaje("humano")}
  let(:mano) {FactoryArma.new.crear_arma("mano")}
  let(:espada) {FactoryArma.new.crear_arma("espada")}

  it '01-Puntaje de humano-con-mano es 1' do
    expect(Humano.new.calcular_puntaje_con(mano)).to eq 1
  end

  it '02-Puntaje de humano-con-espada es 2' do
    expect(Humano.new.calcular_puntaje_con(espada)).to eq 2
  end
end
