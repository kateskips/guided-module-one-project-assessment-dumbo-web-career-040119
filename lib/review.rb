class Review
    attr_reader :customer
    attr_accessor :restaurant, :content, :rating

    @@all = []

    def initialize(restaurant, content, rating)
        @restaurant = restaurant
        @content = content
        @rating = rating
        @customer = customer
        @@all << self
    end

    def self.all
        @@all
    end

end