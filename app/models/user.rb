class User < ApplicationRecord
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :name, presence: true, length: { maximum: 70 }
  validates :email, presence: true, uniqueness: true, length: { maximum: 300 },format: { with: VALID_EMAIL_REGEX }
  has_secure_password
  validates :password, presence: true, length: { maximum: 8 }
end
