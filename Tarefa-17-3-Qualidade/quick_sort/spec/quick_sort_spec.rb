
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
  
      it "sorts an array with elements in ascending order" do
        arr = [1, 2, 3, 4, 5]
        n = arr.length
        expected_result = [1, 2, 3, 4, 5]
        QuickSort.quick_sort(arr, 0, n-1)
        expect(arr).to eq(expected_result) 
      end
    
      it "sorts an array with elements in descending order" do
        arr = [5, 4, 3, 2, 1]
        n = arr.length
        expected_result = [1, 2, 3, 4, 5]
        QuickSort.quick_sort(arr, 0, n-1)
        expect(arr).to eq(expected_result) 
      end
        
      it "sorts an array with repeated elements" do
        arr = [3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5]
        n = arr.length
        expected_result = [1, 1, 2, 3, 3, 4, 5, 5, 5, 6, 9]
        QuickSort.quick_sort(arr, 0, n-1)
        expect(arr).to eq(expected_result) 
      end
  
      it "sorts an array with a single element" do
        arr = [42]
        n = arr.length
        expected_result = [42]
        QuickSort.quick_sort(arr, 0, n-1)
        expect(arr).to eq(expected_result) 
      end
  
    
      it "sorts an empty array" do
        arr = []
        n = arr.length
        expected_result = []
        QuickSort.quick_sort(arr, 0, n-1)
        expect(arr).to eq(expected_result) 
      end

   
    
  
  
  
  

  
  
    end
end









