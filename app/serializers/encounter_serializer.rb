class EncounterSerializer < ActiveModel::Serializer
include Rails.application.routes.url_helpers
  # include JSONAPI::Serializer
  # set_key_transform :camel_lower
  attributes :id, :username, :breed, :name, :color, :age, :features, :demeanor, :lat, :lng, :user_id, :dog_id, :photo, :date_created, :time_created, :created, :updated_at, :show
  
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

  # def created
  #   object.created_at.strftime("%I:%M %p, %B %d, %Y")
  # end

  def created
    object.created_at.strftime("%m/%d/%Y, %l:%M:%S %p")
    
  end

  def date_created
    object.created_at.strftime("%B %d, %Y")
  end

  def time_created
    object.created_at.strftime("%I:%M %p")
  end

end
