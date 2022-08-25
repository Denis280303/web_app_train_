# frozen_string_literal: true

# TicketsController
class TicketsController < ApplicationController
  before_action :authenticate_user!, only: [:create, :index]
  before_action :find_train, only: %i[new create]

  def index
    @tickets = current_user.tickets
  end

  def new
    @ticket = Ticket.new
    @start_station = RailwayStation.find(params[:start_station_id])
    @end_station = RailwayStation.find(params[:end_station_id])
  end

  def create
    @ticket = @train.tickets.new(ticket_params)
    @ticket.route_id = @train.route_id
    @ticket.user_id = current_user.id
    if @ticket.save
      redirect_to tickets_path, notice: 'Білет створено.'
    else
      redirect_to search_index_path
    end
  end

  def show
    @ticket = Ticket.find(params[:id])
    @currently_user = User.find(@ticket.user_id)
    @ticket = @currently_user.tickets.find(params[:id])
  end

  def destroy
    @ticket = Ticket.find(params[:id])
    @ticket.destroy
    redirect_to tickets_url, notice: 'Ticket was successfully destroyed.'
  end

  private

  def ticket_params
    params.require(:ticket).permit(:train_id, :user_first_name, :user_last_name, :user_fathers_name, :user_passport,
                                   :start_station_id, :end_station_id)
  end

  def find_train
    @train = Train.find(params[:train_id])
  end
end
