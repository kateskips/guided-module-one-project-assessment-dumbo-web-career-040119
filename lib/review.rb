class Review
    attr_reader :user
    attr_accessor :restaurant, :content, :rating

    @@all = []

    def initialize(restaurant, content, rating, user)
        @restaurant = restaurant
        @content = content
        @rating = rating
        @user = user
        @@all << self
    end

    def self.all
        @@all
    end
end