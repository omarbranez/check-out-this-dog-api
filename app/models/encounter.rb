class Encounter < ApplicationRecord
  belongs_to :user
  belongs_to :dog
  has_one_attached :photo

  def photo_url
    Rails.application.routes.url_helpers.url_for(photo) if photo.attached?
  end
end
