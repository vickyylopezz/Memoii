require 'spec_helper'

describe 'Alquiler' do
  let(:alquiler) { Alquiler.new }

  it 'alquiler de 3 horas deberia ser 300' do
    expect(alquiler.calcular(3,"h")).to eq 300 # rubocop:disable Lint/AmbiguousOperator
  end
end
