require 'spec_helper'

describe 'Mano' do
  let(:mano) {FactoryArma.new.crear_arma("mano")}

  it 'Incrementar puntaje de mano devuelve el mismo puntaje' do
    expect(mano.incrementar_puntaje(10)).to eq 10
  end
end
