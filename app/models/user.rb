class User < ApplicationRecord
  has_many :scripts

  has_secure_password
end
