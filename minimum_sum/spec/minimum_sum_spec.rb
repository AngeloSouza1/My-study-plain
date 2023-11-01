# frozen_string_literal: true
require 'minimum_sum'

RSpec.describe MinimumSum do
    describe '#Test def => min_sum' do
      it 'returns the correct minimum sum for an array of positive integers' do
        arr = [3, 6, 2, 8, 7, 5]
        expect(MinimumSum.min_sum(arr)).to eq(10)
      end
  
      it 'calculates minimum value correctly with a single element' do
        arr = [5]
        expected_result = 0 # Com apenas um elemento, o resultado esperado é sempre 0
        expect(MinimumSum.min_sum(arr)).to eq(0)
      end
   
  
    end
 end