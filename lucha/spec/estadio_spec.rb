require 'spec_helper'

describe 'Estadio' do
  let(:estadio) {FactoryEscenario.new.crear_escenario("estadio")}

  it 'Incrementar puntaje de humano de 5 en estadio no modifica el puntaje' do
    expect(estadio.incrementar_puntaje_para_humano(5)).to eq 5
  end

  it 'Incrementar puntaje de lobo de 3 en estadio no modifica el puntaje' do
    expect(estadio.incrementar_puntaje_para_lobo(3)).to eq 3
  end

  it 'Incrementar puntaje de vampiro de 7 en estadio no modifica el puntaje' do
    expect(estadio.incrementar_puntaje_para_vampiro(7)).to eq 7
  end

end
