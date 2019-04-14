require_relative '../config/environment'
require 'pry'

puts "hello world"


#restaurants
wendys = Restaurant.new("Wendys")
mcdonalds = Restaurant.new("McDonalds")

#user
adam = User.new("Adam", "Staiger")
matt = User.new("Matt", "Sanders")

#reviews

satisfied = Review.new(wendys, "Satisfied", 5)
nogood = Review.new(wendys, "No Good", 1)

binding.pry
0
