class User < ApplicationRecord
  has_many :scripts

  validates :email, :username, presence: true
  validates :email, :username, uniqueness: true

  has_secure_password
end
