# frozen_string_literal: true

# WagonsController
class WagonsController < ApplicationController
  before_action :set_wagon, only: %i[show edit update destroy]

  # GET /wagons or /wagons.json
  def index
    @wagons = Wagon.all
  end

  # GET /wagons/1 or /wagons/1.json
  def show; end

  # GET /wagons/new
  def new
    @wagon = Wagon.new
  end

  # GET /wagons/1/edit
  def edit; end

  # POST /wagons or /wagons.json
  def create
    @wagon = Wagon.new(wagon_params)
    respond_to do |format|
      if @wagon.save
        format.html { redirect_to wagon_url(@wagon), notice: 'Wagon was successfully created.' }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wagons/1 or /wagons/1.json
  def update
    respond_to do |format|
      if @wagon.update(wagon_params)
        format.html { redirect_to wagon_url(@wagon), notice: 'Wagon was successfully updated.' }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wagons/1 or /wagons/1.json
  def destroy
    @wagon.destroy

    respond_to do |format|
      format.html { redirect_to wagons_url, notice: 'Wagon was successfully destroyed.' }
    end
  end

  private

  # Use callbacks to share common setup or conswagonts between actions.
  def set_wagon
    @wagon = Wagon.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def wagon_params
    params.require(:wagon).
    permit(:current_train_id, :type, :high_seats, :low_seats, :side_low_seats, :side_high_seats, :econom_seats)
  end
end
