class ComputersController < ApplicationController
  before_action :set_computer, only: [:show, :edit, :update, :destroy, :downPc, :computerDown ]
  #before_action :upsme, only: [:update, :create] does not work fine with create
  # GET /computers
  # GET /computers.json
  def index
    @computers = Computer.all.where(operational: true).order(:name).paginate(page: params[:page], per_page: 10 )
    #@computers = Computer.all.order(:name).paginate(page: params[:page], per_page: 10 ) ORIGINAL
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
    upsme
    respond_to do |format|
      if @computer.save
        set_me
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
    upsme
    respond_to do |format|
      if @computer.update(computer_params)
        set_me
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
    #@computer.destroy ----> ORIGINAL
    @computer.operational = false if @computer.operational
    @computer.save!
    respond_to do |format|
      format.html { redirect_to computers_url, notice: 'Computadora fue eliminada satisfactoriament.' }
      format.json { head :no_content }
    end
  end
  
  def showmodal
    @brandmodel = BrandModel.new
    respond_to do |format|
      format.html
      format.js
    end
  end
  
  def addBrandModel4pc
    respond_to do |format|
      #byebug
      if BrandModel.create(description:'COMPUTADORA',brandx:params[:brand], modelx:params[:model], User_id:current_user.id)
        @brands = BrandModel.select(:brandx).where(description:'COMPUTADORA').uniq.pluck(:brandx)
        format.html { render :partial => 'brand_models/addBrand'}
      else
        alert:'Error al agregar Marca-Modelo!'
      end
    end
  end
  
  def downPc
  end
  
  def computerDown
    respond_to do |format|
      @computer.operational = false
      if @computer.update(computer_params)
        format.html { redirect_to nonOper_computers_url, notice: 'Computadora fue actualizada satisfactoriamente.' }
      else
        format.html { render :downPc }
      end
    end
  end
  
  def nonOper
    @nonOperationals = Computer.where(operational:false)
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_computer
      @computer = Computer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def computer_params
      params.require(:computer).permit(:ninventary, :nserie, :brand, :model, :nfactura, :buy_date, :genus, :processor, :hd, :memory, 
      :bluetooth, :macbluetooth ,:os, :voffice, :users, :name, :workgroup, :wifi, :maclan, :iplan, :masklan, :macwifi, :ipwifi, 
      :maskwifi, :operational, :reazon, :notes, :Network_id, :Delegation_id, :Dependency_id, :Worker_id,
      :picture1, :picture2, :picture3 )
    end

    def set_me
      @computer.User_id = current_user.id
      @computer.save!
    end

    def upsme
      @computer.nserie.upcase!
      @computer.nfactura.upcase!
    end
end
