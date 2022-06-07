class Gym
  
  @@all = []
  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

    # - Get a list of all gyms
  def self.all
    @@all
  end

  # - Get a list of all memberships at a specific gym
  def member
    Membership.all.select {|mem| mem.gym == self}
  end
  # - Get a list of all the lifters that have a membership to a specific gym

  def all_lifters
    member.map(&:lifter)
  end

  # - Get a list of the names of all lifters that have a membership to that gym

  def all_lifters_names
    all_lifters.map(&:name)
  end

  # - Get the combined lift total of every lifter has a membership to that gym
  def total_lift
    all_lifters.map(&:lift_total).sum
end
end
