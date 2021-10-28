class EncounterSerializer < ActiveModel::Serializer
include Rails.application.routes.url_helpers
  # include JSONAPI::Serializer
  # set_key_transform :camel_lower
  attributes :id, :name, :color, :age, :features, :demeanor, :lat, :lng, :user_id, :dog_id, :photo
  
  def photo
    if object.photo.attached?
      { url: rails_blob_url(object.photo)} # generate a photo url
    end
  end

  
  # attribute :photo do |encounter|
  #   encounter.photo_url
  # end
  # belongs_to :user
  # belongs_to :dog

end
