class Restaurant < ActiveRecord::Base
  has_many :reviews
  has_many :customers, through: :reviews

  def average_star_rating
    self.reviews.map do |review|
      review.rating
    end.reduce(:+).to_f / self.reviews.length
  end

  def longest_review
    self.reviews.order("LENGTH(content) DESC").first
    end
  end

  def self.find_by_name (name)
    self.find_by(name: name)
  end



end
