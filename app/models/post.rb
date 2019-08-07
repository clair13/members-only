class Post < ApplicationRecord
  belongs_to :user

  validates :user_id, presence :true
  validates :title, presence :true, length: { maximum: 80 }
  validates :body, length: { maximum: 1000 }
end
