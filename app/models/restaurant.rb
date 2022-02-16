class Restaurant < ApplicationRecord
  food_categories = %w[chinese italian japanese french belgian]
  has_many :reviews, dependent: :destroy
  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: food_categories }
end
