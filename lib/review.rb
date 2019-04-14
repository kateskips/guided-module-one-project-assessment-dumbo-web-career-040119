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

    #returns the customer object for that given review
    #Once a review is created, I should not be able to change the author
    def user
    end



    #returns the restaurant object for that given review
    #Once a review is created, I should not be able to change the restaurant
    def restaurant
    end

    #returns the star rating for a restaurant. This should be an integer from 1-5
    def rating
    end

    #returns the review content, as a string, for a particular review
    def content
    end


end