

require_relative "find_missing/version"

module FindMissing
  class Error < StandardError; end

  def find_missing(arr)
    n = arr.length
    temp = Array.new(n + 1, 0)
  
    for i in 0...n
      temp[arr[i] - 1] = 1
    end
  
    ans = nil
    for i in 0..n
      if temp[i] == 0
        ans = i + 1
      end
    end
  
    return ans
  end






end
