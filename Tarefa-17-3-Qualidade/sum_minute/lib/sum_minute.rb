# frozen_string_literal: true

require_relative "sum_minute/version"

module SumMinute
  class Error < StandardError; end
 
  def self.min_sum(arr)
    min_val = arr.min
    return min_val * (arr.length - 1)
  end
  
 #Em Ruby, usamos o método min para encontrar o valor mínimo no array, em vez de min_element.
end
