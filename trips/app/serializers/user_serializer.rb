class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :password, :gender, :email, :phone, :age, :image
end
