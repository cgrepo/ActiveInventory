class HarddsController < ApplicationController
  before_action :set_hardd, only: [:show, :edit, :update, :destroy]
  
  # GET /hardds
  # GET /hardds.json
  def index
    @hardds = Hardd.all.order(:size).paginate(page: params[:page], per_page: 7 )
  end

  # GET /hardds/1
  # GET /hardds/1.json
  def show
  end

  # GET /hardds/new
  def new
    @hardd = Hardd.new
  end

  # GET /hardds/1/edit
  def edit
  end

  # POST /hardds
  # POST /hardds.json
  def create
    @hardd = Hardd.new(hardd_params)
    respond_to do |format|
      if @hardd.save
        set_me
        format.html { redirect_to @hardd, notice: 'Disco Duro creado.' }
        format.json { render :show, status: :created, location: @hardd }
      else
        format.html { render :new }
        format.json { render json: @hardd.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hardds/1
  # PATCH/PUT /hardds/1.json
  def update
    respond_to do |format|
      if @hardd.update(hardd_params)
        set_me
        format.html { redirect_to @hardd, notice: 'Disco Duro actualizado.' }
        format.json { render :show, status: :ok, location: @hardd }
      else
        format.html { render :edit }
        format.json { render json: @hardd.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hardds/1
  # DELETE /hardds/1.json
  def destroy
    @hardd.destroy
    respond_to do |format|
      format.html { redirect_to hardds_url, notice: 'Disco Duro borrado.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hardd
      @hardd = Hardd.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hardd_params
      params.require(:hardd).permit(:size, :tsize)
    end
    
    def set_me
      @hardd.User_id = current_user.id
      @hardd.save!
    end
end
