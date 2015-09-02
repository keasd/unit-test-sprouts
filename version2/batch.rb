class batch
  attr_accessor :mungs

  #- Create a new batch
  def initialize ( mung_beans )
    self.mungs = mung_beans
    soak && store
  end

  #- Store in a dark place
  def store
     sleep 8.hours
     # a random number of beans sprout
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
    def soak
      self.soaked = true
    end

    def drain
      self.soaked = false
    end
end
