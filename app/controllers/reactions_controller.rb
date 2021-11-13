class ReactionsController < ApplicationController
    before_action :set_reaction, only: [:show, :update, :destroy]
    def index
        @reaction = Reaction.all.order("created_at DESC")
    
        render json: @reactions
    end

    def show
        render json: @reaction
    end

    def create
        # binding.pry
        @reaction = Reaction.create(reaction_params)
        @reactions = Reaction.all
        render json: @reactions
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
      params.permit(:user_id, :report_id, :liked)
    end
    
end
