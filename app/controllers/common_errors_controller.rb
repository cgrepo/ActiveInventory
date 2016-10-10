class CommonErrorsController < ApplicationController
  before_action :set_common_error, only: [:show, :edit, :update, :destroy]

  # GET /common_errors
  # GET /common_errors.json
  def index
    @common_errors = CommonError.all.order(:description).paginate(page: params[:page], per_page: 7 )
  end

  # GET /common_errors/1
  # GET /common_errors/1.json
  def show
  end

  # GET /common_errors/new
  def new
    @common_error = CommonError.new
  end

  # GET /common_errors/1/edit
  def edit
  end

  # POST /common_errors
  # POST /common_errors.json
  def create
    @common_error = CommonError.new(common_error_params)

    respond_to do |format|
      if @common_error.save
        format.html { redirect_to @common_error, notice: 'Entrada catalogo correcta.' }
        format.json { render :show, status: :created, location: @common_error }
      else
        format.html { render :new }
        format.json { render json: @common_error.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /common_errors/1
  # PATCH/PUT /common_errors/1.json
  def update
    respond_to do |format|
      if @common_error.update(common_error_params)
        format.html { redirect_to @common_error, notice: 'Actualizacion catalogo correcta.' }
        format.json { render :show, status: :ok, location: @common_error }
      else
        format.html { render :edit }
        format.json { render json: @common_error.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /common_errors/1
  # DELETE /common_errors/1.json
  def destroy
    @common_error.destroy
    respond_to do |format|
      format.html { redirect_to common_errors_url, notice: 'Entrada catalogo borrada.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_common_error
      @common_error = CommonError.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def common_error_params
      params.require(:common_error).permit(:description)
    end
end
