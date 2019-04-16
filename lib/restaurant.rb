class Restaurant < ActiveRecord::Base
  has_many :reviews
  has_many :users, through: :reviews


  def self.display_restaurants 
    self.all.map do |restaurant|
      puts restaurant.name 
    end
  end 

end
