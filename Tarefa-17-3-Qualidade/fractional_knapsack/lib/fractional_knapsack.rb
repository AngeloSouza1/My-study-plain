# frozen_string_literal: true

require_relative "fractional_knapsack/version"

module FractionalKnapsack
  class Error < StandardError; end

  class Item
    attr_accessor :profit, :weight
  
    def initialize(profit, weight)
      @profit = profit
      @weight = weight
    end
  end
  
  def self.fractional_knapsack(w, arr)
    valid_items = arr.reject { |item| item.profit.zero? && item.weight.zero? }
    valid_items.sort_by! { |item| -(item.profit.to_f / item.weight) }

    final_value = 0.0
    valid_items.each do |item|
      if item.weight <= w
        w -= item.weight
        final_value += item.profit
      else
        final_value += item.profit * (w.to_f / item.weight)
        break
      end
    end

    final_value
  end
end
