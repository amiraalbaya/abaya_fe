class ArrivedQatarsController < ApplicationController
  before_action :set_arrived_qatar, only: [:show, :edit, :update, :destroy]

  # GET /arrived_qatars
  # GET /arrived_qatars.json
  def index
    @arrived_qatars = ArrivedQatar.all
  end

  # GET /arrived_qatars/1
  # GET /arrived_qatars/1.json
  def show
  end

  # GET /arrived_qatars/new
  def new
    @arrived_qatar = ArrivedQatar.new
  end

  # GET /arrived_qatars/1/edit
  def edit
  end

  # POST /arrived_qatars
  # POST /arrived_qatars.json
  def create
    @arrived_qatar = ArrivedQatar.new(arrived_qatar_params)

    respond_to do |format|
      if @arrived_qatar.save
        format.html { redirect_to @arrived_qatar, notice: 'Arrived qatar was successfully created.' }
        format.json { render :show, status: :created, location: @arrived_qatar }
      else
        format.html { render :new }
        format.json { render json: @arrived_qatar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /arrived_qatars/1
  # PATCH/PUT /arrived_qatars/1.json
  def update
    respond_to do |format|
      if @arrived_qatar.update(arrived_qatar_params)
        format.html { redirect_to @arrived_qatar, notice: 'Arrived qatar was successfully updated.' }
        format.json { render :show, status: :ok, location: @arrived_qatar }
      else
        format.html { render :edit }
        format.json { render json: @arrived_qatar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /arrived_qatars/1
  # DELETE /arrived_qatars/1.json
  def destroy
    @arrived_qatar.destroy
    respond_to do |format|
      format.html { redirect_to arrived_qatars_url, notice: 'Arrived qatar was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_arrived_qatar
      @arrived_qatar = ArrivedQatar.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def arrived_qatar_params
      params.require(:arrived_qatar).permit(:date_arrived_pittsburgh, :date_delivered, :date_arrived_qatar, :sender, :description, :comment, :shipping_weight, :delivered)
    end
end
