class ReportsController < ApplicationController
  before_action :set_report, only: [:show, :update, :destroy]

  # GET /Reports
  def index
    @reports = Report.all.order("created_at DESC")

    render json: @reports
  end

  # GET /Reports/1
  def show
    # binding.pry
    @logged_in_user = session_user
    render json: @report, user: @logged_in_user
  end

  # POST /Reports
  def create
    # binding.pry
    @report = Report.create(report_params)
    # @report = Report.new(Report_params)
    @reports = Report.all
    render json: @reports
    # if @report.save
    #   render json: @report, status: :created, location: @report
    #  else
    #   render json: @report.errors, status: :unprocessable_entity
    # end
  end

  # PATCH/PUT /Reports/1
  def update
    if @report.update(report_params)
      render json: @report
    else
      render json: @report.errors, status: :unprocessable_entity
    end
  end

  # DELETE /Reports/1
  def destroy
    @report.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_report
      @report = Report.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def Report_params
      # params.require(:Report)#
      params.permit(:user_id, :dog_id, :name, :color, :age, :gender, :features, :demeanor, :lat, :lng, :reactions, :photo, :show)
    end
end
