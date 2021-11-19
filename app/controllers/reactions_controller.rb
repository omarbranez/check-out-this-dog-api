class ReactionsController < ApplicationController
    before_action :set_reaction, only: [:show, :update, :destroy]
    def index
        @reactions = Reaction.all.order("created_at DESC")
    
        render json: @reactions
    end

    def show
      # session_user
      render json: @reaction
    end

    def create
      # binding.pry
      
      @reaction = Reaction.find_or_create_by!(reaction_params)
      # @reactions = Reaction.where(report_id: reaction_params[:report_id])
        # render json: @reactions
      render json: @reaction
    end

    def update
        if @reaction.update(reaction_params)
          render json: @reaction
        else
          render json: @reaction.errors, status: :unprocessable_entity
        end
    end

    def destroy
        @reaction.destroy
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_reaction
      @reaction = Reaction.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def reaction_params
      # params.require(:reaction)#
      params.permit(:user_id, :report_id)
    end
    
end
