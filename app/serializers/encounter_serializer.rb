# module PhotoHelper
#   extend ActiveSupport::Concern

#   class_methods do
#     def photo_url(encounter)
#       encounter.photo.url
#     end
#   end
# end

class EncounterSerializer
  include JSONAPI::Serializer
  attributes :name, :color, :age, :features, :lat, :lng
  
  # attribute :photo do |encounter|
  #   if encounter.photo.attached?
  #     url_for(encounter.photo)
  #   end
  # end
  attribute :photo do |encounter|
    encounter.photo_url
  end
  belongs_to :user
  belongs_to :dog
  # has_one_attached :photo
  # def photo
  #   rails_blob_path(object.photo, disposition: "attachment", only_path: true) if object.photo.attached?
  # end
end
