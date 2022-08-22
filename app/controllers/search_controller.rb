# frozen_string_literal: true

# SearchController
class SearchController < ApplicationController
  before_action :authenticate_user!

  def index
    @stations = RailwayStation.all
  end

  def search
    @start_station = RailwayStation.find(params[:start_station_id])
    @end_station = RailwayStation.find(params[:end_station_id])
    @routes = Route.searched_routes(@start_station, @end_station)
  end
end
