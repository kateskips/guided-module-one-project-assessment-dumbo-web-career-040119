class User

  attr_reader :first_name, :last_name
  attr_accessor :review, :restaurant

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @review = review
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

  #Customer#add_review(restaurant, content, rating)given a **restaurant object**, some review content (as a string), and a star rating (as an integer), creates a new review and associates it with that customer and restaurant.
  def add_review(restaurant, content, rating)
    areview = Review.new(restaurant, content, rating, self)
  end

  #Customer#num_reviews`
  #Returns the total number of reviews that a customer has authored
  def num_reviews
    Review.all.select do |num|
      num.user == self
    end
  end

  #Returns a **unique** array of all restaurants a customer has reviewed
  def restaurants
    Restaurant.all.map do |places|
      places.review == self
    end
  end
end