# frozen_string_literal: true

require_relative "cut/version"

module Paper
     class Error < StandardError; end
  
     def self.minimum_square(n, m)
      dp = Array.new(n + 1) { Array.new(m + 1, 0) }
    
      (1..n).each do |i|
        (1..m).each do |j|
          if i == j
            dp[i][j] = 1
          else
            dp[i][j] = Float::INFINITY
    
            (1...i).each do |k|
              dp[i][j] = [dp[i][j], dp[i - k][j] + dp[k][j]].min
            end
    
            (1...j).each do |k|
              dp[i][j] = [dp[i][j], dp[i][j - k] + dp[i][k]].min
            end
          end
        end
      end
      dp[n][m]
    end


end
