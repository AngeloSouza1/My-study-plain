# lib/job_sequence.rb

module JobSequence
  class Error < StandardError; end

  class Job
    attr_accessor :id, :dead, :profit

    def initialize(id, dead, profit)
      @id = id
      @dead = dead
      @profit = profit
    end
  end

  def self.compare(job1, job2)
    job2.profit - job1.profit
  end

  def self.min(num1, num2)
    num1 > num2 ? num2 : num1
  end

  def self.schedule_jobs(arr)
    n = arr.length
    arr.sort! { |a, b| compare(a, b) }

    result = Array.new(n)
    slot = Array.new(n, false)

    (0...n).each do |i|
      (min(n, arr[i].dead) - 1).downto(0) do |j|
        if !slot[j]
          result[j] = arr[i].id
          slot[j] = true
          break
        end
      end
    end

    # Ordenar em ordem crescente antes de retornar
    result.compact.sort
  end
end
