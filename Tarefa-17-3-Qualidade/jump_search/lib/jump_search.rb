# frozen_string_literal: true

require_relative "jump_search/version"

module JumpSearch
  class Error < StandardError; end
 
  def min(a, b)
    if b > a
      return a
    else
      return b
    end
  end
  
  def jumpsearch(arr, x)
    n = arr.length
    step = Math.sqrt(n).to_i
    prev = 0
  
    while arr[min(step, n) - 1] < x
      prev = step
      step += Math.sqrt(n).to_i
      return -1 if prev >= n
    end
  
    while arr[prev] < x
      prev += 1
      return -1 if prev == min(step, n)
    end
  
    if arr[prev] == x
      return prev
    else
      return -1
    end
  end
  
end
