class OfficevsController < ApplicationController
  before_action :set_officev, only: [:show, :edit, :update, :destroy]
  before_action :set_me, only: [:update, :create]
  
  # GET /officevs
  # GET /officevs.json
  def index
    @officevs = Officev.all.order(:name).paginate(page: params[:page], per_page: 7 )
  end

  # GET /officevs/1
  # GET /officevs/1.json
  def show
  end

  # GET /officevs/new
  def new
    @officev = Officev.new
  end

  # GET /officevs/1/edit
  def edit
  end

  # POST /officevs
  # POST /officevs.json
  def create
    @officev = Officev.new(officev_params)

    respond_to do |format|
      if @officev.save
        format.html { redirect_to @officev, notice: 'Officev was successfully created.' }
        format.json { render :show, status: :created, location: @officev }
      else
        format.html { render :new }
        format.json { render json: @officev.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /officevs/1
  # PATCH/PUT /officevs/1.json
  def update
    respond_to do |format|
      if @officev.update(officev_params)
        format.html { redirect_to @officev, notice: 'Officev was successfully updated.' }
        format.json { render :show, status: :ok, location: @officev }
      else
        format.html { render :edit }
        format.json { render json: @officev.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /officevs/1
  # DELETE /officevs/1.json
  def destroy
    @officev.destroy
    respond_to do |format|
      format.html { redirect_to officevs_url, notice: 'Officev was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_officev
      @officev = Officev.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def officev_params
      params.require(:officev).permit(:name)
    end
    
    def set_me
      @officev.User ||= current_user
    end
end
