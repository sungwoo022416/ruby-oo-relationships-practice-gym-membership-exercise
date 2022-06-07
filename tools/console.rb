# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

sungwoo = Lifter.new("Sungwoo", 250)
jared = Lifter.new("Jared", 210)
malcom = Lifter.new("Malcom", 280)

la_fit = Gym.new("LA_fit")
allhour = Gym.new("Allhour")
anytime = Gym.new("Anytime")

mem1 = Membership.new(allhour,sungwoo, 15)
mem2 = Membership.new(la_fit,jared, 40)
mem3 = Membership.new(anytime,malcom, 60)
mem4 = Membership.new(la_fit,sungwoo, 40)


binding.pry

puts "Gains!"
