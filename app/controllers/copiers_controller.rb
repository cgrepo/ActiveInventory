class CopiersController < ApplicationController
  before_action :set_copier, only: [:show, :edit, :update, :destroy]

  # GET /copiers
  # GET /copiers.json
  def index
    @copiers = Copier.all.paginate(page: params[:page], per_page: 10 )
  end

  # GET /copiers/1
  # GET /copiers/1.json
  def show
  end

  # GET /copiers/new
  def new
    @copier = Copier.new
  end

  # GET /copiers/1/edit
  def edit
  end

  # POST /copiers
  # POST /copiers.json
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

  # PATCH/PUT /copiers/1
  # PATCH/PUT /copiers/1.json
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

  # DELETE /copiers/1
  # DELETE /copiers/1.json
  def destroy
    @copier.destroy
    respond_to do |format|
      format.html { redirect_to copiers_url, notice: 'Copiadora fue borrada satisfactoriamente..' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_copier
      @copier = Copier.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def copier_params
      params.require(:copier).permit(:ninventary, :nserie, :brand, :model, :nfactura, :buy_date, :operational, :reazon, :notes, :Dependency_id)
    end

    def set_me
      @copier.User_id = current_user.id
      @copier.save!
    end
end
