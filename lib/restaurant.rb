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
  #helper
  def reviews
    Review.all.select do |reviews|
      reviews.restaurant == self
    end
  end

  #Returns a **unique** list of all users who have reviewed a particular restaurant.
  #First, get a list of all the reviews, then get all the users from those reviews
  def users
    reviews = Review.all.map {|review| review.user}
    reviews.uniq
  end
  

  #returns the average star rating for a restaurant based on its reviews
  def average_star_rating
  end

  #given a string of restaurant name, returns the first restaurant that matches
  def self.find_by_name(name)
    @@all.find{|restaurant| restaurant.name == name}
  end
end
