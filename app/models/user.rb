class User < ApplicationRecord
  validates :name, presence: true,  length: { maximum: 15 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  valifates :email, presence: true, uniqueness: true, format: { with: VALID_EMAIL_REGEX }
  validates :password, length: { in: 8..32 },format: { with: /\A[A-Za-z]\w*\z/ }
  has_secure_password
end
