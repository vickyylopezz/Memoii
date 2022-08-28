require 'spec_helper'

describe 'Alquiler' do
  let(:alquiler_por_dia) { Alquiler.new('d') }
  let(:alquiler_por_hora) { Alquiler.new('h') }
  let(:alquiler_por_km) { Alquiler.new('k') }

  it 'alquiler de 3 horas deberia ser 300' do
    expect(alquiler_por_hora.calcular(3, Date.parse("20190119"), Date.parse("20190119"),"20112223336")).to eq 300
  end

  it 'alquiler de 5 dias deberia ser 10000' do
    expect(alquiler_por_dia.calcular(5, Date.parse("20190119"), Date.parse("20190124"), "20112223336")).to eq 10000
  end

  it 'alquiler de 2 km deberia ser 120' do
    expect(alquiler_por_km.calcular(2, Date.parse("20190119"), Date.parse("20190119"), "20112223336")).to eq 120
  end

  it 'alquiler de 6 horas deberia ser 600' do
    expect(alquiler_por_hora.calcular(6, Date.parse("20190119"), Date.parse("20190119"), "20112223336")).to eq 600
  end

  it 'alquiler de 1 dia deberia ser 2000' do
    expect(alquiler_por_dia.calcular(1, Date.parse("20190119"), Date.parse("20190120"),"20112223336" )).to eq 2000
  end

  it 'alquiler de 10 km deberia ser 200' do
    expect(alquiler_por_km.calcular(10, Date.parse("20190119"), Date.parse("20190119"), "20112223336")).to eq 200
  end

  it 'alquiler de empresa por 10 horas deberia ser 950 por el descuento' do
    expect(alquiler_por_hora.calcular(10, Date.parse("20190119"), Date.parse("20190119"), "26112223336")).to eq 950
  end

  it 'alquiler de empresa por 5 km deberia ser 142.5 por el descuento' do
    expect(alquiler_por_km.calcular(5, Date.parse("20190119"), Date.parse("20190119"), "26112223336")).to eq 142.5
  end

  it 'alquiler de empresa por 3 dias deberia ser 5700 por el descuento' do
    expect(alquiler_por_dia.calcular(3, Date.parse("20190119"), Date.parse("20190119"), "26112223336")).to eq 5700
  end

  it 'alquiler por 2 dias devuelto despues deberia ser 8000 por el recargo' do
    expect(alquiler_por_dia.calcular(2,Date.parse("20190119"), Date.parse("20190122"),"20112223336")).to eq 8000
  end

  it 'alquiler por 1 dias devuelto despues deberia ser 4000 por el recargo' do
    expect(alquiler_por_dia.calcular(1,Date.parse("20190119"), Date.parse("20190122"), "20112223336")).to eq 4000
  end

  it 'alquiler por 100 km no devuelto en el mismo dia deberia ser 2200 por el recargo' do
    expect(alquiler_por_km.calcular(100,Date.parse("20190119"), Date.parse("20190120"), "20112223336")).to eq 2200
  end

  it 'alquiler por 4 dias devuelto antes se cobra por 4 dias (8000)' do
    expect(alquiler_por_dia.calcular(4,Date.parse("20190119"), Date.parse("20190120"), "20112223336")).to eq 8000
  end

  it 'monto de 1000 se le aplica descuento deberia ser 950' do
    expect(alquiler_por_dia.aplicar_descuento(1000)).to eq 950
  end

  it 'monto de 2000 en alquiler por dia se aplica recargo deberia ser 4000' do
    expect(PorDia.new.aplicar_recargo(2000)).to eq 4000
  end

  it 'monto de 500 en alquiler por km se aplica recargo deberia ser 1000' do
    expect(PorKm.new.aplicar_recargo(500)).to eq 1000
  end

  it 'monto de 600 en alquiler por hora se aplica recargo y no deberia modificarse el valor' do
    expect(PorHora.new.aplicar_recargo(600)).to eq 600
  end

end
