# frozen_string_literal: true

require_relative "flow/version"

module Minimize
  module Cash
    module Flow
      class Error < StandardError; end
    
    # Number of persons (or vertices in the graph)
          N = 3

          def self.get_min(arr)
            min_index = 0
            (1...N).each do |i|
              min_index = i if arr[i] < arr[min_index]
            end
            min_index
          end

          def self.get_max(arr)
            max_index = 0
            (1...N).each do |i|
              max_index = i if arr[i] > arr[max_index]
            end
            max_index
          end

          def self.min_of_2(x, y)
            x < y ? x : y
          end

          def self.min_cash_flow_rec(amount)
            mx_credit = get_max(amount)
            mx_debit = get_min(amount)

            return if amount[mx_credit].zero? && amount[mx_debit].zero?

            min = min_of_2(-amount[mx_debit], amount[mx_credit])
            amount[mx_credit] -= min
            amount[mx_debit] += min

            puts "Person #{mx_debit} pays #{min} to Person #{mx_credit}"

            min_cash_flow_rec(amount)
          end

          def self.min_cash_flow(graph)
            amount = Array.new(N, 0)

            (0...N).each do |p|
              (0...N).each do |i|
                amount[p] += (graph[i][p] - graph[p][i])
              end
            end

            min_cash_flow_rec(amount)
          end

    end
  end
end
