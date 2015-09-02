class Bean
  attr_accessor :state

  def initialize
    self.state = "unsprouted"
  end

  def sprout
    self.state = "sprouted" if should_sprout
  end

  private
  def should_sprout
    [true, false].sample
  end
end
