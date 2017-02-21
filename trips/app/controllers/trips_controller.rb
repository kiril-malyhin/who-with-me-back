class TripsController < ApplicationController
  before_action :set_trip, only: [:update, :destroy]

  # GET /trips
  def index
    @trips = Trip.all

    render json: @trips
  end

  # GET /trips/1
  def show
    @user = User.find(params[:id])
    render json: @user.trips
  end

  def find_trip
    @trip = Trip.where(from: params[:trip][:from], to: params[:trip][:to], date: params[:trip][:date])
    if @trip
      render json: @trip
    else
      render status: 404
    end
  end

  # POST /trips
  def create
    @trip = Trip.new(trip_params)

    if @trip.save
      render json: @trip, status: :created, location: @trip
    else
      render json: @trip.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /trips/1
  def update
    if @trip.update(trip_params)
      render json: @trip
    else
      render json: @trip.errors, status: :unprocessable_entity
    end
  end

  # DELETE /trips/1
  def destroy
    @trip.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trip
      @trip = Trip.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def trip_params
      params.require(:trip).permit(:user_id, :from, :to, :date, :price, :number_of_seats, :car_type, :drive_level)
    end
end
