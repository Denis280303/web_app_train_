# frozen_string_literal: true

# TrainsController
module Admin
  # RoutesController
  class TrainsController < Admin::BaseController
    before_action :set_train, only: %i[show edit update destroy]

    # GET /trains or /trains.json
    def index
      @trains = Train.all
    end

    # GET /trains/1
    def show; end

    # GET /trains/new
    def new
      @train = Train.new
    end

    # GET /trains/1/edit
    def edit; end

    # POST /trains or /trains.json
    def create
      @train = Train.new(train_params)
      respond_to do |format|
        if @train.save
          format.html { redirect_to admin_train_url(@train), notice: 'Train was successfully created.' }
        else
          format.html { render :new, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /trains/1 or /trains/1.json
    def update
      respond_to do |format|
        if @train.update(train_params)
          format.html { redirect_to admin_train_url(@train), notice: 'Train was successfully updated.' }
        else
          format.html { render :edit, status: :unprocessable_entity }
        end
      end
    end

    def update_number
      @train = Train.find(params[:id])
      if @train.update(train_number_params)
        redirect_to admin_trains_path, notice: 'Train was successfully update.'
      else
        render :edit
    end

    # DELETE /trains/1 or /trains/1.json
    def destroy
      @train.destroy

      respond_to do |format|
        format.html { redirect_to admin_trains_url, notice: 'Train was successfully destroyed.' }
      end
    end

    private

    # Use callbacks to share common setup or constraints between actions.
    def set_train
      @train = Train.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def train_params
      params.require(:train).permit(:number, :current_station_id, :route_id, :order_wagon)
    end

    def train_number_params
      params.require(:train).permit(:number)
  end
  end
end
