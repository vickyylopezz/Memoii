require 'spec_helper'

describe 'Humano' do
  let(:lobo) {FactoryPersonaje.new.crear_personaje("lobo")}
  let(:mano) {FactoryArma.new.crear_arma("mano")}

  it '01-Puntaje de lobo-con-mano es 3' do
    expect(lobo.calcular_puntaje_con(mano)).to eq 3
  end
end
