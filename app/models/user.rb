class User < ApplicationRecord
  has_secure_password
  has_many :posts
  validates :email, presence: true, uniqueness: true, format: { with: /\b[A-Z0-9._%a-z\-]+@(?:[A-Z0-9a-z\-]+\.)+[A-Za-z]{2,4}\z/, message: 'Email is invalid' }
  validates :password, length: { in: 8..20 } 
end
