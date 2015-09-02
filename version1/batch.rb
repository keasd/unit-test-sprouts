##
# Class representing a batch of Mung beans
# Illustrates Sandi Metz's talk on [The Magic Tricks of Testing](https://www.youtube.com/watch?v=URSWYvyc42M)

class Batch

  attr_accessor :state, :age

  ##
  # Function: Create a new batch
  def initialize
    self.mungs = find_mungs
    soak
  end

  #- Soak and drain the batch
  def rinse
    soak unless self.soaked
    drain
  end

  #- Check how many of the beans have sprouted
  def count_sprouted
    self.mungs.count { |m| m.sprouted == true }
  end

  private
    def find_mungs
      Array.new(rand(60..100)) { |m| "mung_#{m}"}
    end

    def sprout_mungs
      x = rand[0..90]
      self.mungs[]
    end

    def soak
      self.state = "soaked"
    end

    def drain
      self.state = "drained"
    end
end
