class Lifter

  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self

  end

  def self.all
    @@all << self
  end

  def memberships
    many_memberships = Membership.all.select {|membership| membership.lifter == self}
  end

  def membership_cost
  end

  def gyms
    many_gyms = self.memberships
    many_gyms.map {|membership| membership.gym}
  end

  def add_membership(gym, cost)
    new_membership = Membership.new(cost, self, gym)
  end

  def self.average
    all_lift_totals = @@all.map {|lifter| lifter.lift_total}
    all_lift_totals.inject(0) {|sum, el| sum + el} / all_lift_totals.size
  end





end
