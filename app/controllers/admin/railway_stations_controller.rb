# frozen_string_literal: true

# rubocop:disable Metrics/MethodLength

# RailwayStationsController
module Admin
  # RoutesController
  class RailwayStationsController < Admin::BaseController
    before_action :set_railway_station, only: %i[show edit update destroy update_position update_time]

    # GET /railway_stations or /railway_stations.json
    def index
      @railway_stations = RailwayStation.all
    end

    # GET /railway_stations/1 or /railway_stations/1.json
    def show; end

    # GET /railway_stations/new
    def new
      @railway_station = RailwayStation.new
    end

    # GET /railway_stations/1/edit
    def edit; end

    # POST /railway_stations or /railway_stations.json
    def create
      @railway_station = RailwayStation.new(railway_station_params)

      respond_to do |format|
        if @railway_station.save
          format.html do
 redirect_to admin_railway_station_url(@railway_station), notice: 'Локацію успішно створено.' end
          format.json { render :show, status: :created, location: @railway_station }
        else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @railway_station.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /railway_stations/1 or /railway_stations/1.json
    def update
      respond_to do |format|
        if @railway_station.update(railway_station_params)
          format.html do
 redirect_to admin_railway_station_url(@railway_station), notice: 'Локацію оновлено.' end
        else
          format.html { render :edit, status: :unprocessable_entity }
        end
      end
    end

    def update_position
      @route = Route.find(params[:route_id])
      @railway_station.update_position(@route, params[:position])
      redirect_to admin_route_path(@route)
    end

    def update_time
      @route = Route.find(params[:route_id])
      @railway_station.update_time(@route, params[:arrival_time], params[:departure_time])
      redirect_to admin_route_path(@route)
    end

    # DELETE /railway_stations/1 or /railway_stations/1.json
    def destroy
      @railway_station.destroy

      respond_to do |format|
        format.html { redirect_to admin_railway_stations_url, notice: 'Локацію видалено.' }
        format.json { head :no_content }
      end
    end

    private

    # Use callbacks to share common setup or constraints between actions.
    def set_railway_station
      @railway_station = RailwayStation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def railway_station_params
      params.require(:railway_station).permit(:title, :price)
    end
  end
end

# rubocop:enable Metrics/MethodLength
