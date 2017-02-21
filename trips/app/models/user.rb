class User < ApplicationRecord
  has_many :trips, dependent: :destroy
  has_many :books, dependent: :destroy
  has_many :reserved_trips, through: :books, source: :trip
  validates :name, uniqueness: true
  mount_uploader :image, ImageUploader
end
