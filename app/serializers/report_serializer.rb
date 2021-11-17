class ReportSerializer < ActiveModel::Serializer
include Rails.application.routes.url_helpers
  # has_many :reactions
  attributes :id, :username, :breed, :name, :color, :age, :features, :demeanor, :lat, :lng, :user_id, :dog_id, :photo, :date_created, :time_created, :created, :updated_at, :show, :reactions, :comments, :liked
  
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

  def liked
    # binding.pry

    !!Reaction.find_by(user_id: @instance_options[:user].id, report_id: self.object.id)
  end

  def reactions
      object.reactions.map do |reaction|
        {
          id: reaction.id,
          user_id: reaction.user_id,
          username: User.find(reaction.user_id).username,
          report_id: reaction.report_id,
          created: reaction.created_at.strftime("%m/%d/%Y, %l:%M:%S %p")
        }
    end
  end

  def comments
      object.comments.map do |comment|
        {
          id: comment.id,
          user_id: comment.user_id,
          username: User.find(comment.user_id).username,
          report_id: comment.report_id,
          content: comment.content,
          created: comment.created_at.strftime("%m/%d/%Y, %l:%M:%S %p")
        }
      end
  end
end
