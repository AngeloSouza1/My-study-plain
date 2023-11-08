# frozen_string_literal: true
require_relative '../lib/merge_select'


RSpec.describe MergeSelect do
  describe 'Tests MergeSelect' do
    let(:arr) { [12, 11, 13, 5, 6, 7] }
    let(:sorted_arr) { arr.sort }

    it 'correctly merges two subarrays' do
      l = 0
      m = 2
      r = 5
      expected_result = sorted_arr[0..5]
      MergeSort.merge(arr, l, m, r)
      expect(arr).to eq(expected_result)
    end
  end
end

