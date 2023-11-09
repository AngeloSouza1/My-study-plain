# frozen_string_literal: true
require_relative '../lib/merge_select'


RSpec.describe MergeSelect do
  describe 'Tests MergeSelect' do
    let(:arr) { [12, 11, 13, 5, 6, 7] }

    it 'correctly merges two subarrays' do
      l = 0
      m = 2
      r = 5
      expected_result = [5, 6, 7, 11, 12, 13]
      MergeSelect.mergeSort(arr, l, r)
      expect(arr).to eq(expected_result)
    end
  
    it 'correctly sorts a single-element array' do
      single_element_arr = [1]
      expected_result = [1]
      MergeSelect.mergeSort(single_element_arr, 0, 0)
      expect(single_element_arr).to eq(expected_result)
    end
    it 'correctly handles an empty array' do
      empty_arr = []
      expected_result = []
      MergeSelect.mergeSort(empty_arr, 0, -1)
      expect(empty_arr).to eq(expected_result)
    end

    it 'correctly handles an already sorted array' do
      sorted_arr = [1, 2, 3, 4, 5]
      expected_result = [1, 2, 3, 4, 5]
      MergeSelect.mergeSort(sorted_arr, 0, 4)
      expect(sorted_arr).to eq(expected_result)
    end

    it 'correctly handles a reverse-sorted array' do
      reverse_sorted_arr = [5, 4, 3, 2, 1]
      expected_result = [1, 2, 3, 4, 5]
      MergeSelect.mergeSort(reverse_sorted_arr, 0, 4)
      expect(reverse_sorted_arr).to eq(expected_result)
    end
   
  end
end
