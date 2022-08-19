class Admin::TicketsController < Admin::BaseController
  before_action :set_ticket, only: [:show, :edit, :update, :destroy]

  def index
    @tickets = Ticket.all
  end

  def edit; end

  def update
    if @ticket.update(ticket_params)
      redirect_to admin_ticket_path(@ticket)
    else
      render :edit
    end
  end

  def show
  end

  def destroy
    @ticket.destroy
    redirect_to admin_tickets_url, notice: 'Ticket was successfully destroyed.'
  end

  private

  def set_ticket
    @ticket = Ticket.find(params[:id])
  end

  def ticket_params
    params.require(:ticket).permit(:train_id, :user_first_name, :user_last_name, :user_fathers_name, :user_passport, :start_station_id, :end_station_id)
  end

end 