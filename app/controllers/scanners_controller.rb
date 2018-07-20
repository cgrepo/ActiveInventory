class ScannersController < ApplicationController
  before_action :set_scanner, only: [:show, :edit, :update, :destroy]

  # GET /scanners
  # GET /scanners.json
  def index
    @scanners = Scanner.all.where(operational: true).paginate(page: params[:page], per_page: 10 )
  end

  # GET /scanners/1
  # GET /scanners/1.json
  def show
  end

  # GET /scanners/new
  def new
    @scanner = Scanner.new
  end

  # GET /scanners/1/edit
  def edit
  end

  # POST /scanners
  # POST /scanners.json
  def create
    @scanner = Scanner.new(scanner_params)

    respond_to do |format|
      if @scanner.save
        set_me
        format.html { redirect_to @scanner, notice: 'Scanner creado satisfactoriamente!.' }
        format.json { render :show, status: :created, location: @scanner }
      else
        format.html { render :new }
        format.json { render json: @scanner.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /scanners/1
  # PATCH/PUT /scanners/1.json
  def update
    respond_to do |format|
      if @scanner.update(scanner_params)
        set_me
        format.html { redirect_to @scanner, notice: 'Scanner actualizado satisfactoriamente.' }
        format.json { render :show, status: :ok, location: @scanner }
      else
        format.html { render :edit }
        format.json { render json: @scanner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scanners/1
  # DELETE /scanners/1.json
  def destroy
    @scanner.destroy
    respond_to do |format|
      format.html { redirect_to scanners_url, notice: 'Scanner borrado.' }
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
  
  def addBrandModel4scanner
    respond_to do |format|
      if BrandModel.create(description:'ESCANER',brandx:params[:brand], modelx:params[:model], User_id:current_user.id)
        @brands = BrandModel.select(:brandx).where(description:'ESCANER').uniq.pluck(:brandx)
        format.html { render :partial => 'brand_models/addBrand'}
      else
        alert:'Error al agregar Marca-Modelo!'
      end
    end
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_scanner
      @scanner = Scanner.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def scanner_params
      params.require(:scanner).permit(:ninventary, :nserie, :brand, :model, :nfactura, :buy_date, :net, :ipnet, :masknet, :netmac, :operational, :reazon, :Delegation_id, :Dependency_id, :Network_id)
    end
    
    def set_me
      @scanner.User_id = current_user.id
      @scanner.save!
    end
end
