class Encounter < ApplicationRecord
  belongs_to :user
  belongs_to :dog
  has_one_attached :photo
end
