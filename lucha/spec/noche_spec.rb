require 'spec_helper'

describe 'Noche' do
  let(:noche) {FactoryEscenario.new.crear_escenario("noche")}

  it 'Incrementar puntaje de humano de 5 en noche no modifica el puntaje' do
    expect(noche.incrementar_puntaje_para_humano(5)).to eq 5
  end

  it 'Incrementar puntaje de lobo de 8 en noche no modifica el puntaje' do
    expect(noche.incrementar_puntaje_para_lobo(2)).to eq 2
  end

  it 'Incrementar puntaje de vampiro de 1 en noche duplica el puntaje' do
    expect(noche.incrementar_puntaje_para_vampiro(3)).to eq 6
  end

end
