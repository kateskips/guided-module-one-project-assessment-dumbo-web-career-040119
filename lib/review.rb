class Review < ActiveRecord::Base
    belongs_to :user
    belongs_to :restaurant

  def self.display_reviews(user)
    self.all.map do |review|
      puts "Name: #{review.user.name}" 
      puts "Restaurant: #{review.restaurant.name}, Content: #{review.content}, Rating: #{review.rating}"
    end 
  end

end
