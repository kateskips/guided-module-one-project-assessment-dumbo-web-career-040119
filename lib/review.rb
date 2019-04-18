class Review < ActiveRecord::Base
    belongs_to :user
    belongs_to :restaurant

  def self.display_all_reviews
    self.all.map do |review|
      puts "Name: #{review.user.name}" 
      puts "Restaurant: #{review.restaurant.name}, Content: #{review.content}, Rating: #{review.rating}"
    end
  end


  def self.display_user_review(user)
    self.where(user_id: user.id).find_each do |review|
      puts "Restaurant: #{review.restaurant.name}, Content: #{review.content}, Rating: #{review.rating}"
    end
  end
end
