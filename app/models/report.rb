class Report < ApplicationRecord
  belongs_to :user
  belongs_to :dog
  has_one_attached :photo
  has_many :reactions
  has_many :comments

  def photo_url
    Rails.application.routes.url_helpers.url_for(photo) if photo.attached?
  end

  def filter_reports
    
  end
end
