class TripSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :from, :to, :date, :price, :number_of_seats, :drive_level, :car_type, :reserved_seats, :books_info
  has_one :user

  def books_info
    object.books.map { |b| { id: b.id, seats_count: b.seats_count, user:  b.user&.attributes } }
  end
end
