class StatisticsController < ApplicationController
  before_action :set_statistic, only: [:show, :edit, :update, :destroy]
  
  # GET /statistics
  # GET /statistics.json
  def index
    @statistics = Statistic.all.paginate(page: params[:page], per_page: 10 )
  end

  # GET /statistics/1
  # GET /statistics/1.json
  def show
  end

  # GET /statistics/new
  def new
    @statistic = Statistic.new
  end

  # GET /statistics/1/edit
  def edit
  end

  # POST /statistics
  # POST /statistics.json
  def create
    @statistic = Statistic.new(statistic_params)

    respond_to do |format|
      if @statistic.save
        set_me
        format.html { redirect_to @statistic, notice: 'Estadistica fue creada satisfactoriamente.' }
        format.json { render :show, status: :created, location: @statistic }
      else
        format.html { render :new }
        format.json { render json: @statistic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /statistics/1
  # PATCH/PUT /statistics/1.json
  def update
    respond_to do |format|
      if @statistic.update(statistic_params)
        set_me
        format.html { redirect_to @statistic, notice: 'Estadistica fue actualizada satisfactoriamente.' }
        format.json { render :show, status: :ok, location: @statistic }
      else
        format.html { render :edit }
        format.json { render json: @statistic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /statistics/1
  # DELETE /statistics/1.json
  def destroy
    @statistic.destroy
    respond_to do |format|
      format.html { redirect_to statistics_url, notice: 'Estadistica fue borrada satisfactoriamente..' }
      format.json { head :no_content }
    end
  end
  # POULATE 
    def get_dependencies
      @dependencies = Dependency.where(:Delegation => params[:Delegation_id])
      respond_to do |format|
        format.js
      end
    end
    
    def get_equipments
      @copiers = Copier.where(:Dependency => params[:Dependency_id])
      @printers = Printer.where(:Dependency => params[:Dependency_id])

      #byebug
      respond_to do |format|
        format.js
      end
    end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_statistic
      @statistic = Statistic.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def statistic_params
      params.require(:statistic).permit(:month, :sheets, :consumable, :Copier_id, :Printer_id)
    end
    
    def set_me
      @statistic.User_id = current_user.id
      @statistic.save!
    end

    def set_vars
      @dependencies = Dependency.all.limit 3
      @copiers = Copier.all.limit 3
      @printers = Printer.all.limit 3
      @telephones =Telephone.all.limit 3
      @screens = Screen.all.limit 3
      @powers = Power.all.limit 3
    end
end
