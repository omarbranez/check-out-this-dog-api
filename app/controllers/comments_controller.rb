class CommentsController < ApplicationController
    before_action :set_comment, only: [:show, :update, :destroy]
    def index
        @comment = Comment.all.order("created_at DESC")
    
        render json: @comments
    end

    def show
        render json: @comment
    end

    def create
        # binding.pry
        @comment = Comment.create(comment_params)
        # @comments = Comment.all
        # render json: @comments
        render json: @comment
    end

    def update
        if @comment.update(comment_params)
          render json: @comment
        else
          render json: @comment.errors, status: :unprocessable_entity
        end
    end

    def destroy
        @comment.destroy
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = Comment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def comment_params
      # params.require(:comment)#
      params.permit(:user_id, :report_id, :content)
    end
    
end
