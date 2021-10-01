class User < ApplicationRecord
    has_many :encounters
    has_many :dogs, through: :encounters
end
