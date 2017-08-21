class CopiersController < ApplicationController
  before_action :set_copier, only: [:show, :edit, :update, :destroy]
  def index
    @copiers = Copier.all.where(operational: true).paginate(page: params[:page], per_page: 10 )
  end
  def show
  end
  def new
    @copier = Copier.new
  end
  def edit
  end
  def create
    @copier = Copier.new(copier_params)
    
    respond_to do |format|
      if @copier.save
        set_me
        format.html { redirect_to @copier, notice: 'Copiadora fue creada satisfactoriamente.' }
        format.json { render :show, status: :created, location: @copier }
      else
        format.html { render :new }
        format.json { render json: @copier.errors, status: :unprocessable_entity }
      end
    end
  end
  def update
    respond_to do |format|
      if @copier.update(copier_params)
        set_me
        format.html { redirect_to @copier, notice: 'Copiadora fue actualizada satisfactoriamente.' }
        format.json { render :show, status: :ok, location: @copier }
      else
        format.html { render :edit }
        format.json { render json: @copier.errors, status: :unprocessable_entity }
      end
    end
  end
  def destroy
    @copier.operational = false if @copier.operational
    @copier.save!
    respond_to do |format|
      format.html { redirect_to copiers_url, notice: 'Copiadora fue borrada satisfactoriamente..' }
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
  def addBrandModel4copier
    respond_to do |format|
      if BrandModel.create(description:'COPIADORA',brandx:params[:brand], modelx:params[:model], User_id:current_user.id)
        @brands = BrandModel.select(:brandx).where(description:'COPIADORA').uniq.pluck(:brandx)
        format.html { render :partial => 'brand_models/addBrand'}
      else
        alert:'Error al agregar Marca-Modelo!'
      end
    end
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_copier
      @copier = Copier.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def copier_params
      params.require(:copier).permit( :ninventary, :nserie, :brand, :model, :nfactura, :buy_date, :operational, :reazon, :notes, 
                                      :net, :net_mac, :net_ip, :net_mask, :wifi, :wifi_mac, :wifi_ip, :wifi_mask,
                                      :Network_id, :Delegation_id, :hostname, :Dependency_id)
    end

    def set_me
      @copier.User_id = current_user.id
      @copier.save!
    end
end
