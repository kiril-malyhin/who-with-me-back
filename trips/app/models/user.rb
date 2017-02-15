class User < ApplicationRecord
  has_many :trips, dependent: :destroy
  validates :name, uniqueness: true
end
