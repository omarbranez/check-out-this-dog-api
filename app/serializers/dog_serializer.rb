class DogSerializer < ActiveModel::Serializer
  # include JSONAPI::Serializer
  attributes :id, :breed, :temperament, :life_span, :weight, :height, :breed_group, :bred_for, :image
  # has_many :encounters
end
