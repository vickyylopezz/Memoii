require 'spec_helper'

describe 'Ciudad' do
  let(:ciudad) {FactoryEscenario.new.crear_escenario("ciudad")}

  it 'Incrementar puntaje de humano de 4 en ciudad duplica el puntaje' do
    expect(ciudad.incrementar_puntaje_para_humano(4)).to eq 8
  end

  it 'Incrementar puntaje de lobo de 8 en ciudad no modifica el puntaje' do
    expect(ciudad.incrementar_puntaje_para_lobo(8)).to eq 8
  end

  it 'Incrementar puntaje de vampiro de 1 en ciudad no modifica el puntaje' do
    expect(ciudad.incrementar_puntaje_para_vampiro(1)).to eq 1
  end

end
