##
# Class representing a batch of bean beans
# Illustrates Sandi Metz's talk on [The Magic Tricks of Testing](https://www.youtube.com/watch?v=URSWYvyc42M)

class Batch
  attr_accessor :beans, :state

  ##
  # Function: Create a new batch
  def initialize
    self.beans = find_beans
  end

  #- Check how many of the beans have sprouted
  def count_sprouted
    self.beans.count { |m| m.sprouted == true }
  end

  def soak
    self.state = "soaked"
  end

  def drain
    self.state = "drained"
  end

  private
    def find_beans
      Array.new(rand(60..100)) { Bean.new }
    end

    def sprout_beans
      rand[0..100].times {
        self.beans[rand(0..100)].sprout
      }
    end

end
