class Restaurant
    attr_reader :name, :user
    attr_accessor :review

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  #returns an array of all reviews for that restaurant
  def reviews
    Review.all.select do |reviews|
      reviews.restaurant == self
    end
  end

  #Returns a **unique** list of all users who have reviewed a particular restaurant.
  def users
    User.all.select do |theusers|
      theusers.restaurant == self 
    end
  end

  #returns the average star rating for a restaurant based on its reviews
  def average_star_rating
  end

  #returns the longest review content for a given restaurant
  def longest_review
  end

  def self.find_by_name(name)
  #given a string of restaurant name, returns the first restaurant that matches
  end
end
