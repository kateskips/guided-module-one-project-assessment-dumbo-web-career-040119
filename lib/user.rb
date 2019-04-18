class User < ActiveRecord::Base
  has_many :reviews
  has_many :restaurants, through: :reviews

 
  def self.num_reviews
    Review.all.select do |rev|
      rev.user == self
    end
  end





end