require 'spec_helper'

describe 'Espada' do
  let(:espada) {FactoryArma.new.crear_arma("espada")}

  it 'Incrementar puntaje de 7 de espada duplica el puntaje' do
    expect(espada.incrementar_puntaje(7)).to eq 14
  end

  it 'Incrementar puntaje de 10 de espada duplica el puntaje' do
    expect(espada.incrementar_puntaje(10)).to eq 20
  end
end
