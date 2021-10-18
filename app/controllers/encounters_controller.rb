class EncountersController < ApplicationController
  before_action :set_encounter, only: [:show, :update, :destroy]

  # GET /encounters
  def index
    @encounters = Encounter.all

    render json: EncounterSerializer.new(@encounters)
  end

  # GET /encounters/1
  def show
    render json: EncounterSerializer.new(@encounter)
  end

  # POST /encounters
  def create
    @encounter = Encounter.new(encounter_params)

    if @encounter.save
      render json: @encounter, status: :created, location: @encounter
    else
      render json: @encounter.errors, status: :unprocessable_entity
    end
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
      params.require(:encounter).permit(:user_id, :dog_id, :name, :color, :age, :gender, :features, :demeanor, :ping, :reactions)
    end
end
