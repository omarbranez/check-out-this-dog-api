class User < ApplicationRecord
    has_secure_password
    has_many :reports
    has_many :reactions
    has_many :dogs, through: :reports
end
