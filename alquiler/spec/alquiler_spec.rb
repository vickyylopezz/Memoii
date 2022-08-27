require 'spec_helper'

describe 'Alquiler' do
  let(:alquiler) { Alquiler.new }

  it 'alquiler de 3 horas deberia ser 300' do
    expect(alquiler.calcular(3,"h")).to eq 300
  end

  it 'alquiler de 5 dias deberia ser 10000' do
    expect(alquiler.calcular(5,"d")).to eq 10000
  end

  it 'alquiler de 2 km deberia ser 130' do
    expect(alquiler.calcular(2,"k")).to eq 130
  end

  it 'alquiler de 6 horas deberia ser 600' do
    expect(alquiler.calcular(6,"h")).to eq 600
  end
end
