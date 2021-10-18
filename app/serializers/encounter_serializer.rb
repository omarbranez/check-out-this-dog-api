class EncounterSerializer
  include JSONAPI::Serializer
  attributes :name, :color, :age, :features, :lat, :lng
  
  attribute :photo do |encounter|
    encounter.photo_url
  end
  belongs_to :user
  belongs_to :dog

end
