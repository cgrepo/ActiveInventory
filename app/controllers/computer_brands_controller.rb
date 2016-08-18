class ComputerBrandsController < ApplicationController
  before_action :set_computer_brand, only: [:show, :edit, :update, :destroy]

  # GET /computer_brands
  # GET /computer_brands.json
  def index
    @computer_brands = ComputerBrand.all.order(:name).paginate(page: params[:page], per_page: 7 )
  end

  # GET /computer_brands/1
  # GET /computer_brands/1.json
  def show
  end

  # GET /computer_brands/new
  def new
    
    @computer_brand = ComputerBrand.new
  end

  # GET /computer_brands/1/edit
  def edit
  end

  # POST /computer_brands
  # POST /computer_brands.json
  def create
    @computer_brand = ComputerBrand.new(computer_brand_params)

    respond_to do |format|
      if @computer_brand.save
        format.html { redirect_to @computer_brand, notice: 'Marca creada satisfactoriamente.' }
        format.json { render :show, status: :created, location: @computer_brand }
      else
        format.html { render :new }
        format.json { render json: @computer_brand.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /computer_brands/1
  # PATCH/PUT /computer_brands/1.json
  def update
    respond_to do |format|
      if @computer_brand.update(computer_brand_params)
        format.html { redirect_to @computer_brand, notice: 'Marca actualizada satisfactoriamente.' }
        format.json { render :show, status: :ok, location: @computer_brand }
      else
        format.html { render :edit }
        format.json { render json: @computer_brand.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /computer_brands/1
  # DELETE /computer_brands/1.json
  def destroy
    @computer_brand.destroy
    respond_to do |format|
      format.html { redirect_to computer_brands_url, notice: 'Marca borrada satisfactoriamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_computer_brand
      @computer_brand = ComputerBrand.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def computer_brand_params
      params.require(:computer_brand).permit(:name)
    end
end
