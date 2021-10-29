class EncounterSerializer < ActiveModel::Serializer
include Rails.application.routes.url_helpers
  # include JSONAPI::Serializer
  # set_key_transform :camel_lower
  attributes :id, :username, :breed, :name, :color, :age, :features, :demeanor, :lat, :lng, :user_id, :dog_id, :photo, :created, :updated_at
  
  def photo
    if object.photo.attached?
      { url: rails_blob_url(object.photo)} # generate a photo url
    end
  end

  def username
    object.user.username
  end
  
  def breed
    Dog.find(object.dog_id).breed
  end

  def created
    object.created_at.strftime("%I:%M %p, %B %d, %Y")
  end
  # attribute :photo do |encounter|
  #   encounter.photo_url
  # end
  # belongs_to :user
  # belongs_to :dog

end
