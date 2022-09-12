require 'spec_helper'

describe 'Lluvia' do
  let(:lluvia) {FactoryEscenario.new.crear_escenario("lluvia")}

  it 'Incrementar puntaje de humano de 1 en lluvia no modifica el puntaje' do
    expect(lluvia.incrementar_puntaje_para_humano(1)).to eq 1
  end

  it 'Incrementar puntaje de lobo de 10 en lluvia no modifica el puntaje' do
    expect(lluvia.incrementar_puntaje_para_lobo(2)).to eq 2
  end

  it 'Incrementar puntaje de vampiro de 4 en noche disminuye en uno el puntaje' do
    expect(lluvia.incrementar_puntaje_para_vampiro(4)).to eq 3
  end

end
