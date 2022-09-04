require 'spec_helper'

describe 'Mano' do
  let(:mano) {FactoryArma.new.crear_arma("mano")}

  it 'Incrementar puntaje de 10 de mano devuelve el mismo puntaje' do
    expect(mano.incrementar_puntaje(10)).to eq 10
  end

  it 'Incrementar puntaje de 30 de mano devuelve el mismo puntaje' do
    expect(mano.incrementar_puntaje(30)).to eq 30
  end
end
