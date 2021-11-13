class ReactionSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :report_id, :rating, :content
end
