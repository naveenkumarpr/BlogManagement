class SubCategory < ApplicationRecord
  validates :name, uniqueness: true
  validates :name, :category_id, presence: true
  has_many :posts
  belongs_to :category
end
