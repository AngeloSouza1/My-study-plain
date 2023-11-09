
require_relative '../lib/quick_sort'

RSpec.describe "QuickSort" do
  describe " Tests Quick_sort" do
    it "sorts an array" do
      arr = [10, 7, 8, 9, 1, 5]
      n = arr.length
      expected_result = [1, 5, 7, 8, 9, 10]
      QuickSort.quick_sort(arr, 0, n-1)
      expect(arr).to eq(expected_result) 
      end
  end
end


