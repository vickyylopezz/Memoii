require 'spec_helper'

describe 'Alquiler' do
  let(:alquiler) { Alquiler.new }

  it 'alquiler de 3 horas deberia ser 300' do
    expect(alquiler.calcular(3,"h", "20112223336")).to eq 300
  end

  it 'alquiler de 5 dias deberia ser 10000' do
    expect(alquiler.calcular(5,"d", "20112223336")).to eq 10000
  end

  it 'alquiler de 2 km deberia ser 120' do
    expect(alquiler.calcular(2,"k", "20112223336")).to eq 120
  end

  it 'alquiler de 6 horas deberia ser 600' do
    expect(alquiler.calcular(6,"h", "20112223336")).to eq 600
  end

  it 'alquiler de 1 dia deberia ser 2000' do
    expect(alquiler.calcular(1,"d", "20112223336")).to eq 2000
  end

  it 'alquiler de 10 km deberia ser 200' do
    expect(alquiler.calcular(10,"k", "20112223336")).to eq 200
  end

  it 'alquiler de empresa por 10 horas deberia ser 950' do
    expect(alquiler.calcular(10,"h", "26112223336")).to eq 950
  end

  it 'alquiler de empresa por 5 km deberia ser 142.5' do
    expect(alquiler.calcular(5,"k", "26112223336")).to eq 142.5
  end
end
