class User < ApplicationRecord
  has_secure_password

  validates :username, length: { maximum: 18 }, presence: true
  validates :password_digest, presence: true
end