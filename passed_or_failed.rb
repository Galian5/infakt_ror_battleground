class PassedOrFailed
  def initialize(results, threshold)
    @results = results.each { |key, value| results[key] = value.to_i}
    @threshold = threshold.to_i
    @passed = {}
    @failed = {}
  end


  def perform
    @results.each_pair do |student, score|
      if score >= @threshold
        @passed.store(student, score)
      else
        @failed.store(student, score)
      end
    end
    {:passed => @passed, :failed => @failed}
  end
end
