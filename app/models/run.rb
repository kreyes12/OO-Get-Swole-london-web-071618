require 'pry'

require_relative './lifter.rb'
require_relative './membership.rb'
require_relative './gym.rb'

buff = Lifter.new("Joe", 40)
ripped = Lifter.new("David", 20)
brawny = Lifter.new("Meg", 30)

pure = Gym.new("Pure Gym")
easy = Gym.new("EasyGym")

membership_1 = Membership.new(70, buff, pure)
membership_2 = Membership.new(30, buff, easy)
membership_3 = Membership.new(30, brawny, easy)

binding.pry
