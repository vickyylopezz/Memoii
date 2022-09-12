require 'spec_helper'

describe 'Bosque' do
  let(:bosque) {FactoryEscenario.new.crear_escenario("bosque")}

  it 'Incrementar puntaje de humano de 2 en bosque no modifica el puntaje' do
    expect(bosque.incrementar_puntaje_para_humano(2)).to eq 2
  end

  it 'Incrementar puntaje de lobo de 4 en bosque triplica el puntaje' do
    expect(bosque.incrementar_puntaje_para_lobo(4)).to eq 12
  end

  it 'Incrementar puntaje de vampiro de 1 en noche no modifica el puntaje' do
    expect(bosque.incrementar_puntaje_para_vampiro(1)).to eq 1
  end

end
