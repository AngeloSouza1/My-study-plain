require_relative '../lib/cut'

RSpec.describe 'PaperCut' do
  it 'calcula o número mínimo de quadrados para um retângulo 1x1' do
    expect(Paper.minimum_square(1, 1)).to eq(1)
  end

  it 'calcula o número mínimo de quadrados para um retângulo 2x2' do
    expect(Paper.minimum_square(2, 2)).to eq(1)
  end

  it 'calcula o número mínimo de quadrados para um retângulo 5x5' do
    expect(Paper.minimum_square(5, 5)).to eq(1)
  end

  it 'calcula o número mínimo de quadrados para um retângulo 6x8' do
    expect(Paper.minimum_square(6, 8)).to eq(4)
  end

  it 'calcula o número mínimo de quadrados para um retângulo 13x29' do
    expect(Paper.minimum_square(13, 29)).to eq(9)
  end
end
