class Script < ApplicationRecord
  belongs_to :user
  has_many :captions
end
