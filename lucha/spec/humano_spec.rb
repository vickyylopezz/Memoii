require 'spec_helper'

describe 'Humano' do
  let(:humano) {FactoryPersonaje.new.crear_personaje("humano")}
  let(:mano) {FactoryArma.new.crear_arma("mano")}

  it '01-Puntaje de humano-con-mano es 1' do
    expect(Humano.new.calcular_puntaje_con(mano)).to eq 1
  end
end
