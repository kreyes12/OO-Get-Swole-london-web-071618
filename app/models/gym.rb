class Gym
 ALL = []

  attr_reader :name

  def initialize(name)
    @name = name
    ALL << self

  end

  def self.all
    ALL
  end

  def all_lifters
    many_lifters = Membership.all.select {|membership| membership.gym == self}
    many_lifters.map {|membership| membership.lifter}
  end

  def lifters_by_name
    all_lifters.map {|lifter| lifter.name}
  end

  def lift_totals
    totals = all_lifters.map {|lifter| lifter.lift_total}
    totals.inject(0) {|sum, el| sum + el}
  end


end
