class ProfitsController < ApplicationController
  skip_before_action :verify_authenticity_token
  include HttpAuthConcern
  http_basic_authenticate_with name: 'cars-and-houses', password: 'elephant-refrigerator-dmjnmje'
  before_action :set_profit, only: [:show, :edit, :update, :destroy]

  # GET /profits
  # GET /profits.json
  def index
    @profits = Profit.all
    @days = Day.all
  end

  # GET /profits/1
  # GET /profits/1.json
  def show
  end

  # GET /profits/new
  def new
    @profit = Profit.new
  end

  # GET /profits/1/edit
  def edit
  end

  # POST /profits
  # POST /profits.json
  def create
    ActiveRecord::Base.transaction do
      unless date_match?
        day = Day.create(location: params[:profit][:location], date: make_date)
      else
        if Day.order('created_at DESC').first.location != params[:profit][:location]
          Day.all.each do |day_from_db|
            next if day_from_db.location != params[:profit][:location]
            day = day_from_db
            day_is_from_db = true
          end
          day = Day.create(location: params[:profit][:location], date: make_date) unless day_is_from_db
        else
          day = Day.order('created_at DESC').first
        end
      end
      @profit = Profit.new(new_profit_params(day))
      raise ActiveRecord::Rollback unless @profit.valid?
    end
    respond_to do |format|
      if @profit.save
        format.html { redirect_to @profit, notice: 'Profit was successfully created.' }
        format.json { render :show, status: :created, location: @profit }
      else
        format.html { render :new }
        format.json { render json: @profit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /profits/1
  # PATCH/PUT /profits/1.json
  def update
    respond_to do |format|
      if @profit.update(profit_params)
        format.html { redirect_to @profit, notice: 'Profit was successfully updated.' }
        format.json { render :show, status: :ok, location: @profit }
      else
        format.html { render :edit }
        format.json { render json: @profit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /profits/1
  # DELETE /profits/1.json
  def destroy
    @profit.destroy
    respond_to do |format|
      format.html { redirect_to profits_url, notice: 'Profit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profit
      @profit = Profit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def profit_params
      params.require(:profit).permit(:amount, :dozens_bought, :location, :date)
    end

    def new_profit_params(day)
      params.require(:profit).tap do
        params[:profit][:day_id] = day.id
      end.permit(:amount, :dozens_bought, :location, :day_id, :date)
    end

    def make_date
      Date.new(params[:profit]['date(1i)'].to_i, params[:profit]['date(2i)'].to_i, params[:profit]['date(3i)'].to_i)
    end

    def date_match?
      Day.all.any? && Day.order('created_at DESC').first.created_at.strftime('%-d') == params[:profit]['date(3i)'] && Day.order('created_at DESC').first.created_at.strftime('%Y') == params[:profit]['date(1i)'] && Day.order('created_at DESC').first.created_at.strftime('%_m') == params[:profit]['date(2i)']
    end
end
