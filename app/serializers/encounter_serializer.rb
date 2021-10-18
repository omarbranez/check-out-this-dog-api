class EncounterSerializer
  include JSONAPI::Serializer
  attributes :name, :color, :age, :features, :lat, :lng, :photo
  belongs_to :user
  belongs_to :dog
end
