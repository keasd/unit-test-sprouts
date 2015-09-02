##
# Class representing a batch of bean beans

class Batch
  attr_accessor :beans

  # Creates a new batch
  def initialize
    self.beans = find_beans
  end

  private
  # Return an array of beans (strings)
  def find_beans
    Array.new(rand(60..100)) { |m| "bean_#{m}"}
  end
end
