class ArrivedsController < ApplicationController
  ## this file represents the table arrived in pittsburgh.
  before_action :set_arrived, only: [:show, :edit, :update, :destroy]

  # GET /arriveds
  # GET /arriveds.json
  def index
    @arriveds = Arrived.all
  end

  # GET /arriveds/1
  # GET /arriveds/1.json
  def show
  end

  # GET /arriveds/new
  def new
    @arrived = Arrived.new
  end

  # GET /arriveds/1/edit
  def edit
  end

  # POST /arriveds
  # POST /arriveds.json
  def create
    @arrived = Arrived.new(arrived_params)

    respond_to do |format|
      if @arrived.save
        format.html { redirect_to @arrived, notice: 'Arrived was successfully created.' }
        format.json { render :show, status: :created, location: @arrived }
      else
        format.html { render :new }
        format.json { render json: @arrived.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /arriveds/1
  # PATCH/PUT /arriveds/1.json
  def update
    respond_to do |format|
      if @arrived.update(arrived_params)
        format.html { redirect_to @arrived, notice: 'Arrived was successfully updated.' }
        format.json { render :show, status: :ok, location: @arrived }
      else
        format.html { render :edit }
        format.json { render json: @arrived.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /arriveds/1
  # DELETE /arriveds/1.json
  def destroy
    @arrived.destroy
    respond_to do |format|
      format.html { redirect_to arriveds_url, notice: 'Arrived was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_arrived
      @arrived = Arrived.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def arrived_params
      params.require(:arrived).permit(:id, :date_arrived_pittsburgh, :sender_string, :description, :comment, :shipping_weight, :discard)
    end
end
