require 'pry'
class User

  attr_reader :first_name, :last_name
  attr_accessor :review, :restaurant

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

  def add_review(restaurant, content, rating)
    thereview = Review.new(restaurant, content, rating, self)
  end

  def num_reviews
    areview = Review.all.select do |rev|
      rev.user == self
    end
    areview.length
  end

  #Returns a **unique** array of all restaurants a user has reviewed
  
  def restaurants
    reviews = Review.all.map {|review| review.restaurant}
    reviews.uniq
  end
  #given a string of a full name, returns the first customer whose full name matches
  def self.find_by_name(name)
    @@all.find {|person| person.full_name == name}
  end

  #given a string of a first name, returns an array containing all customers with that first name
   def self.find_all_by_first_name(name)
    @@all.select{|person|person.first_name == name}
  end

  #should return an array of all of the customer full names
  def self.all_names
    @@all.select {|person| person.full_name}
  end

end