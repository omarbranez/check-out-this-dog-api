class ReactionSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :encounter_id, :rating, :content
end
