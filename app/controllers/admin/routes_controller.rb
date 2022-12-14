# frozen_string_literal: true

# RoutesController
module Admin
  # RoutesController
  class RoutesController < Admin::BaseController
    before_action :set_route, only: %i[show edit update destroy]

    def index
      @routes = Route.all
    end

    def show; end

    def new
      @route = Route.new
    end

    def create
      @route = Route.new(route_params)

      if @route.save
        redirect_to admin_route_path(@route)
      else
        render :new
      end
    end

    def edit; end

    def update
      if @route.update(route_params)
        redirect_to admin_route_path(@route)
      else
        render :edit
      end
    end

    def update_title
      @route = Route.find(params[:route_id])
      if @route.update(route_title_params)
        redirect_to admin_routes_path, notice: 'Route was successfully update.'
      else
        render :edit
      end
    end

    def destroy
      @route.destroy
      redirect_to admin_routes_path
    end

    private

    def set_route
      @route = Route.find(params[:id])
    end

    def route_params
      params.require(:route).permit(:title, railway_station_ids: [])
    end

    def route_title_params
      params.require(:route).permit(:title)
    end
  end
end
