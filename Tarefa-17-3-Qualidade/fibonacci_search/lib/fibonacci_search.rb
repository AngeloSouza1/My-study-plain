# frozen_string_literal: true

require_relative "fibonacci_search/version"

module FibonacciSearch
  class Error < StandardError; end
  def min(x, y)
    x <= y ? x : y
  end
  
  def fib_monaccian_search(arr, x, n)
    fib_m_minus_2 = 0
    fib_m_minus_1 = 1
    fib_m = fib_m_minus_2 + fib_m_minus_1
  
    while fib_m < n
      fib_m_minus_2 = fib_m_minus_1
      fib_m_minus_1 = fib_m
      fib_m = fib_m_minus_2 + fib_m_minus_1
    end
  
    offset = -1
  
    while fib_m > 1
      i = min(offset + fib_m_minus_2, n - 1)
  
      if arr[i] < x
        fib_m = fib_m_minus_1
        fib_m_minus_1 = fib_m_minus_2
        fib_m_minus_2 = fib_m - fib_m_minus_1
        offset = i
      elsif arr[i] > x
        fib_m = fib_m_minus_2
        fib_m_minus_1 = fib_m_minus_1 - fib_m_minus_2
        fib_m_minus_2 = fib_m - fib_m_minus_1
      else
        return i
      end
    end
  
    if fib_m_minus_1 != 0 && arr[offset + 1] == x
      return offset + 1
    end
  
    -1
  end
  
  
end
