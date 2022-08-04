class Post < ApplicationRecord
  validates :title, :body, :user_id, :sub_category_id, presence: true
  belongs_to :user
  belongs_to :sub_category
  has_many :comments
end
