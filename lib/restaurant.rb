class Restaurant < ActiveRecord::Base
  has_many :reviews
  has_many :users, through: :reviews


  def self.display_restaurants 
    self.all.map do |restaurant|
      #puts restaurant.name
      #puts restaurant.cuisine
      #puts restaurant.location
      puts "#{restaurant.name} - Cuisine: #{restaurant.cuisine} - Location: #{restaurant.location}"
    end
  end 

end
