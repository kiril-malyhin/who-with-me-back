class Trip < ApplicationRecord
  belongs_to :user
  has_many :books, dependent: :destroy

  def reserved_seats
    books.sum(:seats_count)
  end
end
