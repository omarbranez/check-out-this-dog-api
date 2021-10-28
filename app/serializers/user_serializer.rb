class UserSerializer < ActiveModel::Serializer
  # include JSONAPI::Serializer
  attributes :id, :username
  # has_many :encounters
end
