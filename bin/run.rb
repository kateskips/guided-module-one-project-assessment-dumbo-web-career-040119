require_relative '../config/environment'
require 'pry'

#restaurants
lostacos = Restaurant.new("Los Tacos")
spice = Restaurant.new("Spice Symphony")

#user
adam = User.new("Adam", "Staiger")
matt = User.new("Matt", "Sanders")
amy = User.new("Amy", "Chen")
lizzy = User.new("Lizzy", "Oh")
sam = User.new("Sam", "Kim")

#reviews

satisfied = Review.new(lostacos, "Satisfied", 5, adam)
nogood = Review.new(lostacos, "No Good", 1, matt)
pricy = Review.new(spice, "Too Pricy", 2, amy)
love = Review.new(spice, "A Sense of Spice", 4, lizzy)
sucks = Review.new(lostacos, "Worse than Chipotle", 1, adam)

binding.pry

0
