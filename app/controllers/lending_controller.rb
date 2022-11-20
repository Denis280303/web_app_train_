class LendingController < ApplicationController
  def index
    @stations = RailwayStation.all
  	if current_user
  	  redirect_to search_index_path unless current_user.admin?
  	end
  end

  def show
  end

  def edit
  end
end
