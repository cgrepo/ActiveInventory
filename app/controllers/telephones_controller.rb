class TelephonesController < ApplicationController
  before_action :set_telephone, only: [:show, :edit, :update, :destroy]
  
  # GET /telephones
  # GET /telephones.json
  def index
    @telephones = Telephone.all.paginate(page: params[:page], per_page: 10 )
  end

  # GET /telephones/1
  # GET /telephones/1.json
  def show
  end

  # GET /telephones/new
  def new
    @telephone = Telephone.new
  end

  # GET /telephones/1/edit
  def edit
  end

  # POST /telephones
  # POST /telephones.json
  def create
    @telephone = Telephone.new(telephone_params)

    respond_to do |format|
      if @telephone.save
        set_me
        format.html { redirect_to @telephone, notice: 'Telefono fue agreado satisfactoriamente..' }
        format.json { render :show, status: :created, location: @telephone }
      else
        format.html { render :new }
        format.json { render json: @telephone.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /telephones/1
  # PATCH/PUT /telephones/1.json
  def update
    respond_to do |format|
      check_voip
      if @telephone.update(telephone_params)
        set_me
        format.html { redirect_to @telephone, notice: 'Telefono fue actualizado satisfactoriamente.' }
        format.json { render :show, status: :ok, location: @telephone }
      else
        format.html { render :edit }
        format.json { render json: @telephone.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /telephones/1
  # DELETE /telephones/1.json
  def destroy
    @telephone.destroy
    respond_to do |format|
      format.html { redirect_to telephones_url, notice: 'Telefono fue borrado satisfactoriamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_telephone
      @telephone = Telephone.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def telephone_params
      params.require(:telephone).permit(:ninventary, :nserie, :brand, :model, :buy_date, :nfactura, :genus, :number, :ip, :mac, :operational, :reazon, :notes, :Dependency_id, :Delegation_id)
    end

    def check_voip
      return if telephone_params[:genus] == "VOIP"
      telephone_params[:ip].clear
      telephone_params[:mac].clear
    end

    def set_me
      @telephone.User_id = current_user.id
      @telephone.save!
    end
end
