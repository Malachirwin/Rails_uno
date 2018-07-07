class HoursAndLocationsController < ApplicationController
  before_action :set_hours_and_location, only: [:show, :edit, :update, :destroy]

  # GET /hours_and_locations
  # GET /hours_and_locations.json
  def index
    @hours_and_locations = HoursAndLocation.all
  end

  # GET /hours_and_locations/1
  # GET /hours_and_locations/1.json
  def show
    @hours_and_locations = HoursAndLocation.all
  end

  # GET /hours_and_locations/new
  def new
    @hours_and_location = HoursAndLocation.new
  end

  # GET /hours_and_locations/1/edit
  def edit
  end

  # POST /hours_and_locations
  # POST /hours_and_locations.json
  def create
    @hours_and_location = HoursAndLocation.new(hours_and_location_params)

    respond_to do |format|
      if @hours_and_location.save
        format.html { redirect_to @hours_and_location, notice: 'Hours and location was successfully created.' }
        format.json { render :show, status: :created, location: @hours_and_location }
      else
        format.html { render :new }
        format.json { render json: @hours_and_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hours_and_locations/1
  # PATCH/PUT /hours_and_locations/1.json
  def update
    respond_to do |format|
      if @hours_and_location.update(hours_and_location_params)
        format.html { redirect_to @hours_and_location, notice: 'Hours and location was successfully updated.' }
        format.json { render :show, status: :ok, location: @hours_and_location }
      else
        format.html { render :edit }
        format.json { render json: @hours_and_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hours_and_locations/1
  # DELETE /hours_and_locations/1.json
  def destroy
    @hours_and_location.destroy
    respond_to do |format|
      format.html { redirect_to hours_and_locations_url, notice: 'Hours and location was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hours_and_location
      @hours_and_location = HoursAndLocation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hours_and_location_params
      params.require(:hours_and_location).permit(:content)
    end
end