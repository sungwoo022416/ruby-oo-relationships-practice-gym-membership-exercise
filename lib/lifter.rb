class Lifter
  attr_reader :name, :lift_total

  @@all = []
  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  # - Get a list of all lifters
  def self.all
    @@all
  end

  # - Get a list of all the memberships that a specific lifter has
def memberships
  Membership.all.select {|mem| mem.lifter == self}
end

  # - Get a list of all the gyms that a specific lifter has memberships to
def gyms
  memberships.map(&:gym)
end

  # - Get the average lift total of all lifters
def self.average_lift
  total = Lifter.all.map(&:lift_total).sum
  total / Lifter.all.size
end
  # - Get the total cost of a specific lifter's gym memberships
  def gym_cost
    memberships.map(&:cost).sum
  end

  # - Given a gym and a membership cost, sign a specific lifter up for a new gym
  def new_membership(gym, cost)
    Membership.new(gym,self, cost)
  end
end
