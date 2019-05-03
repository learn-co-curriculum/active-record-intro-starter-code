class Customer < ActiveRecord::Base
  has_many :reviews
  has_many :restaurants, through: :reviews

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review(restaurant, content, rating)
    Review.create(restaurant: restaurant, customer: self, rating: rating, content: content)
  end

  def num_reviews
    self.reviews.length
  end


  def restaurants
    self.reviews.map do |review|
      review.restaurant
    end.uniq
  end

  def self.find_by_name(name)
    Customer.all.find do |cust|
      cust.full_name == name
    end
  end

  def self.find_all_by_first_name (first_name)
    Customer.where(first_name: first_name)
  end

  def self.all_names
    Customer.all.map do |cust|
      cust.full_name
    end
  end
end
