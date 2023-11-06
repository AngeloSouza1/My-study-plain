# frozen_string_literal: true

require_relative "minimum_sum/version"

# minimum_sum.rb

module MinimumSum
  class Error < StandardError; end

  def self.min_sum(arr)
    min_val = arr.min
    return min_val * (arr.length - 1)
  end
end
