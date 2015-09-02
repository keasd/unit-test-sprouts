##
# Class representing a batch of beans

class Batch
  attr_accessor :beans, :state

  # Creates a new batch
  def initialize
    self.beans = find_beans
  end

  # Changes the state to "soaked"
  def soak
    self.state = "soaked"
  end

  # Changes the state to "soaked"
  def drain
    self.state = "drained"
    self.beans.map { |b| b.sprout }
  end

  private
  # Return an array of beans (Bean instances)
  def find_beans
    Array.new(rand(60..100)) { Bean.new }
  end
end
