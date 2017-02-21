class BookSerializer < ActiveModel::Serializer
  attributes :id, :seats_count
  has_one :user
  has_one :trip
end
