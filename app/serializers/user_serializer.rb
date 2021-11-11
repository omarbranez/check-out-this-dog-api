class UserSerializer < ActiveModel::Serializer
  # include JSONAPI::Serializer
  attributes :id, :username, :lat, :lng
  # has_many :encounters
end
