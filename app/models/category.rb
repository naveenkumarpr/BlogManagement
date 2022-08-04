class Category < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true
  has_many :sub_categories
  has_many :posts, through: :sub_categories
end
