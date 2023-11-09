# frozen_string_literal: true

require_relative "quick_sort/version"

module QuickSort
  class Error < StandardError; end

  def self.partition(arr, low, high)
    # Choose the pivot
    pivot = arr[high]
    # Index of smaller element and indicate
    # the right position of pivot found so far
    i = low - 1
  
    for j in low..high
      # If the current element is smaller than the pivot
      if arr[j] < pivot
        # Increment index of the smaller element
        i += 1
        arr[i], arr[j] = arr[j], arr[i]
      end
    end
  
    arr[i + 1], arr[high] = arr[high], arr[i + 1]
    return i + 1
  end
  
  # The Quicksort function Implement
  def self.quick_sort(arr, low, high)
    # When low is less than high
    if low < high
      # pi is the partition return index of the pivot
      pi = partition(arr, low, high)
      
      # Recursion Call
      # Smaller elements than pivot go left and
      # higher elements go right
      quick_sort(arr, low, pi - 1)
      quick_sort(arr, pi + 1, high)
    end
  end
  
end
