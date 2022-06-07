class Membership
  
  @@all = []
  attr_accessor :lifter, :gym
  attr_reader :cost

  def initialize(gym,lifter, cost)
    @gym = gym
    @cost = cost
    @lifter = lifter

    @@all << self
  end
  
  def self.all
    @@all
  end
  # - Get a list of all memberships
end
