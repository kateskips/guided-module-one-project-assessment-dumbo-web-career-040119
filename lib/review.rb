class Review < ActiveRecord::Base
    belongs_to :user
    belongs_to :restaurant
end

def self.display_reviews 
    self.all.map do |reviews|
      puts review.name 
    end
  end 