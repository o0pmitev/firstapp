class Product < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  validates :genre, presence: true
  validates :price, presence: true


  has_many :orders
  has_many :comments
  def self.search(search_term)
   if Rails.env == "development"
    Product.where("name LIKE ?", "%#{search_term}%")
  elsif Rails.env == "production"
    Product.where("name ILIKE ?", "%#{search_term}%")
  else
  end

  # Product.where("name ilike ?", "%#{search_term}%")
  end

  def highest_rating_comment
    comments.rating_desc.first
  end

  def average_rating
    comments.average(:rating).to_f
  end
end
