class ComputersController < ApplicationController
  before_action :set_computer, only: [:show, :edit, :update, :destroy]

  # GET /computers
  # GET /computers.json
  def index
    @computers = Computer.all.order(:name).paginate(page: params[:page], per_page: 15 )
  end

  # GET /computers/1
  # GET /computers/1.json
  def show
  end

  # GET /computers/new
  def new
    @computer = Computer.new
  end

  # GET /computers/1/edit
  def edit
  end

  # POST /computers
  # POST /computers.json
  def create
    @computer = Computer.new(computer_params)

    respond_to do |format|
      if @computer.save
        format.html { redirect_to @computer, notice: 'Computadora fue creada satisfactoriamente.' }
        format.json { render :show, status: :created, location: @computer }
      else
        format.html { render :new }
        format.json { render json: @computer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /computers/1
  # PATCH/PUT /computers/1.json
  def update
    respond_to do |format|
      if @computer.update(computer_params)
        format.html { redirect_to @computer, notice: 'Computadora fue actualizada satisfactoriamente.' }
        format.json { render :show, status: :ok, location: @computer }
      else
        format.html { render :edit }
        format.json { render json: @computer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /computers/1
  # DELETE /computers/1.json
  def destroy
    @computer.destroy
    respond_to do |format|
      format.html { redirect_to computers_url, notice: 'Computadora fue eliminada satisfactoriament.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_computer
      @computer = Computer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def computer_params
      params.require(:computer).permit(:ninventary, :nserie, :brand, :model, :nfactura, :buy_date, :genus, :processor, :hd, :memory, :bluetooth, :macbluetooth ,:os, :voffice, :users, :name, :workgroup, :wifi, :maclan, :iplan, :masklan, :macwifi, :ipwifi, :maskwifi, :operational, :reazon, :notes, :Network_id, :Dependency_id, :Worker_id)
    end
end
