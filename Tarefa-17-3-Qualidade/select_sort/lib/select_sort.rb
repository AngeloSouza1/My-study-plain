# frozen_string_literal: true

require_relative "select_sort/version"


module SelectSort
  class Error < StandardError; end

  def self.selection_sort(arr)
    n = arr.length

    for i in 0...n-1
      min_idx = i
      for j in (i + 1)...n
        min_idx = j if arr[j] < arr[min_idx]
      end

      if min_idx != i
        swap(arr, min_idx, i)
      end
    end

    arr # Retorna o array ordenado
  end

  def self.swap(arr, x, y)
    temp = arr[x]
    arr[x] = arr[y]
    arr[y] = temp
  end
end


    

