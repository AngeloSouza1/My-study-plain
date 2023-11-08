# frozen_string_literal: true

require_relative "merge_select/version"

module MergeSelect
  class Error < StandardError; end
  def self.merge(arr, l, m, r)
    n1 = m - l + 1
    n2 = r - m
  
    vl = []
    vr = []
  
    for i in 0...n1
      vl[i] = arr[l + i]
    end
  
    for j in 0...n2
      vr[j] = arr[m + 1 + j]
    end
  
    i = 0
    j = 0
    k = l
  
    while i < n1 && j < n2
      if vl[i] <= vr[j]
        arr[k] = vl[i]
        i += 1
      else
        arr[k] = vr[j]
        j += 1
      end
      k += 1
    end
  
    while i < n1
      arr[k] = vl[i]
      i += 1
      k += 1
    end
  
    while j < n2
      arr[k] = vr[j]
      j += 1
      k += 1
    end
  end
  
  def self.mergeSort(arr, l, r)
    if l < r
      m = (l + r) / 2
      mergeSort(arr, l, m)
      mergeSort(arr, m + 1, r)
      merge(arr, l, m, r)
    end
  end
  
  def self.printArray(arr)
    arr.each { |num| print "#{num} " }
    puts
  end
    

end
