class DogSerializer
  include JSONAPI::Serializer
  attributes :breed, :temperament, :life_span, :weight, :height, :breed_group, :bred_for
  has_many :encounters
end
