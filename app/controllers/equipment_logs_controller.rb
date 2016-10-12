class EquipmentLogsController < ApplicationController
  before_action :set_equipment_log, only: [:show, :edit, :update, :destroy]

  # GET /equipment_logs
  # GET /equipment_logs.json
  def index
     @current_user = current_user
    @equipment_logs = EquipmentLog.all.order(:genus).paginate(page: params[:page], per_page: 7 )
  end

  # GET /equipment_logs/1
  # GET /equipment_logs/1.json
  def show
    @current_user = current_user
  end

  # GET /equipment_logs/new
  def new
    @equipment_log = EquipmentLog.new
  end

  # GET /equipment_logs/1/edit
  def edit
  end

  # POST /equipment_logs
  # POST /equipment_logs.json
  def create
    @equipment_log = EquipmentLog.new(equipment_log_params)

    respond_to do |format|
      if @equipment_log.save
        set_me
        format.html { redirect_to @equipment_log, notice: 'Equipment log was successfully created.' }
        format.json { render :show, status: :created, location: @equipment_log }
      else
        format.html { render :new }
        format.json { render json: @equipment_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /equipment_logs/1
  # PATCH/PUT /equipment_logs/1.json
  def update
    respond_to do |format|
      if @equipment_log.update(equipment_log_params)
        format.html { redirect_to @equipment_log, notice: 'Equipment log was successfully updated.' }
        format.json { render :show, status: :ok, location: @equipment_log }
      else
        format.html { render :edit }
        format.json { render json: @equipment_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /equipment_logs/1
  # DELETE /equipment_logs/1.json
  def destroy
    @equipment_log.destroy
    respond_to do |format|
      format.html { redirect_to equipment_logs_url, notice: 'Equipment log was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_equipment_log
      @equipment_log = EquipmentLog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def equipment_log_params
      params.require(:equipment_log).permit(:genus, :key, :inDate, :diagnosis, :solution, :outDate)
    end

    def set_me
      @equipment_log.User_id = current_user.id
      @equipment_log.save!
    end
end
