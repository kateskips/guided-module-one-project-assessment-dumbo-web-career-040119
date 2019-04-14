class Restaurant
    attr_reader :name, :user

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
    Customer.all.select do |customers|
      customers.restaurant == self.uniq
    end
  end

end
