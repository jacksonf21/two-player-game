
class Player
  attr_accessor :lives

  def initialize(l)
    @lives = l
  end

  def lose_life
    self.lives -= 1    
  end

end  
