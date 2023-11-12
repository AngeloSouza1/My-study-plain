require_relative '../lib/reoder_index.rb'
RSpec.describe '#reordenar_arrays' do
  it 'reordena o array de acordo com os índices fornecidos' do
    arr = [10, 11, 12]
    index = [1, 0, 2]
    ReoderIndex.reordenar_arrays(arr, index)
    expect(arr).to eq([11, 10, 12])
    expect(index).to eq([1, 0, 2])
  end

  it 'reordena outro array de acordo com os índices fornecidos 2 ' do
    arr = [50, 40, 70, 60, 90]
    index = [3, 0, 4, 1, 2]
    ReoderIndex.reordenar_arrays(arr, index)
    expect(arr).to eq([60, 50, 90, 40, 70])
    expect(index).to eq([3, 0, 4, 1, 2])
  end
end

