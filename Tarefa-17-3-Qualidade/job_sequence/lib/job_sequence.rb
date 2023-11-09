# frozen_string_literal: true

require_relative "job_sequence/version"

module JobSequence
  class Error < StandardError; end
  # A class to represent a job
class Job
  attr_accessor :id, :dead, :profit

  def initialize(id, dead, profit)
    @id = id
    @dead = dead
    @profit = profit
  end
end

# Compare function to sort jobs based on profit in descending order
def self.compare(job1, job2)
  job2.profit - job1.profit
end

# Function to find minimum between two numbers
def self.min(num1, num2)
  num1 > num2 ? num2 : num1
end

# Returns maximum profit from jobs
def self.print_job_scheduling(arr, n)
  # Sort all jobs according to decreasing order of profit
  arr.sort! { |a, b| compare(a, b) }

  result = Array.new(n) # To store result (Sequence of jobs)
  slot = Array.new(n, false) # To keep track of free time slots

  # Iterate through all given jobs
  (0...n).each do |i|
    # Find a free slot for this job (Note that we start from the last possible slot)
    (min(n, arr[i].dead) - 1).downto(0) do |j|
      # Free slot found
      if !slot[j]
        result[j] = i # Add this job to result
        slot[j] = true # Make this slot occupied
        break
      end
    end
  end

  # Print the result
  (0...n).each do |i|
    print "#{arr[result[i]].id} " if slot[i]
  end
  puts
end

# # Driver's code
# arr = [
#   Job.new('a', 2, 100),
#   Job.new('b', 1, 19),
#   Job.new('c', 2, 27),
#   Job.new('d', 1, 25),
#   Job.new('e', 3, 15)
# ]

# puts 'Following is the maximum profit sequence of jobs:'
# # Function call
# print_job_scheduling(arr, arr.length)

 end
