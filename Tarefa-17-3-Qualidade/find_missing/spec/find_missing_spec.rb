require "find_missing"

RSpec.describe FindMissing do
  it 'encontra o número ausente quando o número ausente é 4' do
    arr = [1, 2, 3, 5]
    find = Object.new.extend(FindMissing)
  
    expect(find.find_missing(arr)).to eq(4)
  end
end
    # it 'encontra o número ausente quando o número ausente é 1' do
    #   arr = [2, 3, 4, 5]
    #   expect(find_missing(arr)).to eq(1)
    # end

    # it 'encontra o número ausente quando o número ausente é 7' do
    #   arr = [1, 2, 3, 4, 5, 6]
    #   expect(find_missing(arr)).to eq(7)
    # end

    # it 'lida com um array vazio' do
    #   arr = []
    #   expect(find_missing(arr)).to eq(nil)
    # end

    # it 'lida com um array sem número ausente' do
    #   arr = [1, 2, 3, 4, 5]
    #   expect(find_missing(arr)).to eq(nil)
    # end
  
