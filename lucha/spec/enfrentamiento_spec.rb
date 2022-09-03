require 'spec_helper'

describe 'Enfrentamiento' do
  let(:enfrentamiento) { Enfrentamiento.new }

  it 'Humano-con-espada vs Humano-con-espada en estadio da empate' do
    expect(enfrentamiento.luchar(Luchador.new(Humano.new, Espada.new, Estadio.new), Luchador.new(Humano.new, Espada.new, Estadio.new))).to eq  'empate'
  end

  it 'Humano-con-espada vs Humano-con-mano en estadio da como resultado gana 1' do
    expect(enfrentamiento.luchar(Luchador.new(Humano.new, Espada.new, Estadio.new), Luchador.new(Humano.new, Mano.new, Estadio.new))).to eq  'gana 1'
  end


end
