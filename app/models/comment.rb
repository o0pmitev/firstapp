class Comment < ApplicationRecord
  validates :body, presence: true
  validates :user, presence: true
  validates :product, presence: true

  belongs_to :user
  belongs_to :product

  scope :rating_desc, -> { order(rating: :desc) }
end
