require 'spec_helper'

describe 'Cuchillo' do
  let(:cuchillo) {FactoryArma.new.crear_arma("cuchillo")}

  it 'Incrementar puntaje de 5 de cuchillo incrementa en 2 el puntaje' do
    expect(cuchillo.incrementar_puntaje(5)).to eq 7
  end

  it 'Incrementar puntaje de 2 de cuchillo incrementa en 2 el puntaje' do
    expect(cuchillo.incrementar_puntaje(2)).to eq 4
  end
end
