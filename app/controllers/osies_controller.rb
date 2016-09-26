class OsiesController < ApplicationController
  before_action :set_osy, only: [:show, :edit, :update, :destroy]
  before_action :set_me, only: [:update, :create]
  
  # GET /osies
  # GET /osies.json
  def index
    @osies = Osy.all.paginate(page: params[:page], per_page: 7 )
  end

  # GET /osies/1
  # GET /osies/1.json
  def show
  end

  # GET /osies/new
  def new
    @osy = Osy.new
  end

  # GET /osies/1/edit
  def edit
  end

  # POST /osies
  # POST /osies.json
  def create
    @osy = Osy.new(osy_params)

    respond_to do |format|
      if @osy.save
        format.html { redirect_to @osy, notice: 'Osy was successfully created.' }
        format.json { render :show, status: :created, location: @osy }
      else
        format.html { render :new }
        format.json { render json: @osy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /osies/1
  # PATCH/PUT /osies/1.json
  def update
    respond_to do |format|
      if @osy.update(osy_params)
        format.html { redirect_to @osy, notice: 'Osy was successfully updated.' }
        format.json { render :show, status: :ok, location: @osy }
      else
        format.html { render :edit }
        format.json { render json: @osy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /osies/1
  # DELETE /osies/1.json
  def destroy
    @osy.destroy
    respond_to do |format|
      format.html { redirect_to osies_url, notice: 'Osy was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_osy
      @osy = Osy.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def osy_params
      params.require(:osy).permit(:name, :version)
    end
    
    def set_me
      @osy.User ||= current_user
    end
end
