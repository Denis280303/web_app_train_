class TicketsController < ApplicationController
  before_action :find_train, only: [:new, :create]

  def index
    @tickets = Ticket.all
  end

  def new
    @ticket = Ticket.new
    @start_station = RailwayStation.find(params[:start_station_id])
    @end_station = RailwayStation.find(params[:end_station_id])
  end

  def create
    @ticket = @train.tickets.new(ticket_params)
    @ticket.route_id = @train.route_id
    @ticket.user_id = 1
    if @ticket.save
      redirect_to tickets_path, notice: 'Білет створено.'
    else
      redirect_to search_index_path
    end
  end

  private

  def ticket_params
    params.require(:ticket).permit(:train_id, :user_first_name, :user_last_name, :user_fathers_name, :user_passport, :start_station_id, :end_station_id)
  end

  def find_train
    @train = Train.find(params[:train_id])
  end
end 