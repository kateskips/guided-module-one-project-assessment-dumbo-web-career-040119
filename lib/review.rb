class Review < ActiveRecord::Base
    belongs_to :user
    belongs_to :restaurant

  def self.display_reviews 
    self.all.map do |review|
      #puts review.restaurant.name
      #puts review.user.name
      #puts review.content
      #puts review.rating
      puts "Name: #{review.user.name},Restaurant: #{review.restaurant.name}, Content: #{review.content}, Rating: #{review.rating}"
    end 
  end
 
  #def self.add_review(restaurant, content, rating)
    #areview = Review.new(restaurant, content, rating, self)
  #end
end
