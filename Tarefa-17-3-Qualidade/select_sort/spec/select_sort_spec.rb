require_relative '../lib/select_sort'

RSpec.describe SelectSort do
  describe 'Tests SelectSort' do
    it 'sort an unsorted array' do
        arr = [5,3,2,4,1]
        sorted_arr = SelectSort.selection_sort(arr)
        expect(sorted_arr).to eq([1,2,3,4,5])
    end
 
    it 'sort an already sorted array in ascending order' do
      arr = [5, 10, 15, 20, 25]
      sorted_arr = SelectSort.selection_sort(arr)
      expect(sorted_arr).to eq([5, 10, 15, 20, 25])

    end
 
    it 'sort an already sorted array in descending order' do
      arr = [30, 20, 10, 5, 1]
      sorted_arr = SelectSort.selection_sort(arr)
      expect(sorted_arr).to eq([1, 5, 10, 20, 30])
    end
  
    it 'sort an array with duplicate elements' do
      arr = [64, 64, 12, 12, 11]
      sorted_arr = SelectSort.selection_sort(arr)
      expect(sorted_arr).to eq([11, 12, 12, 64, 64])
    end
 
    it 'sort an array with duplicate elements' do
      arr = []
      sorted_arr = SelectSort.selection_sort(arr)
      expect(sorted_arr).to eq([])
    end
 
  end
end  
