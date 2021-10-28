class UserSerializer < ActiveModel::Serializer
  include JSONAPI::Serializer
  attributes :username
  # has_many :encounters
end
