class EncountersController < ApplicationController
  before_action :set_encounter, only: [:show, :update, :destroy]

  # GET /encounters
  def index
    @encounters = Encounter.all

    render json: @encounters
  end

  # GET /encounters/1
  def show
    render json: @encounter
  end

  # POST /encounters
  def create
    # binding.pry
    @encounter = Encounter.create(encounter_params)
    # @encounter = Encounter.new(encounter_params)
    @encounters = Encounter.all
    render json: @encounters
    # if @encounter.save
    #   render json: @encounter, status: :created, location: @encounter
    #  else
    #   render json: @encounter.errors, status: :unprocessable_entity
    # end
  end

  # PATCH/PUT /encounters/1
  def update
    if @encounter.update(encounter_params)
      render json: @encounter
    else
      render json: @encounter.errors, status: :unprocessable_entity
    end
  end

  # DELETE /encounters/1
  def destroy
    @encounter.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_encounter
      @encounter = Encounter.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def encounter_params
      # params.require(:encounter)#
      params.permit(:user_id, :dog_id, :name, :color, :age, :gender, :features, :demeanor, :lat, :lng, :reactions, :photo, :show)
    end
end
