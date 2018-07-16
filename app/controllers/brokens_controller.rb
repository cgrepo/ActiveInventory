class BrokensController < ApplicationController
  before_action :set_broken, only: [:show, :edit, :update, :destroy]

  def index
    @brokens = Broken.where(gender:'COMP').paginate(page: params[:page], per_page: 10 )
    #@brokens = Broken.first(6)
  end

  def show
  end

  def new
    @broken = Broken.new
    @csl = Delegation.find_by :name=> "Cabo San Lucas"
  end

  def edit
    respond_to do |format|
        format.js
    end
  end

  def create
    @broken = Broken.new(broken_params)
    
    case @broken.gender
      when 'COMP'
        @eq = Computer.find(@broken.idEquipment)
      when 'PRINT'
        @eq = Printer.find(@broken.idEquipment)
      when 'COPY'
        @eq = Copier.find(@broken.idEquipment)
      when 'POW'
        @eq = Power.find(@broken.idEquipment)
      when 'SCREEN'
        @eq = Screen.find(@broken.idEquipment)
    end
    #@eq.class.name
    respond_to do |format|
      if @broken.save
        format.html { redirect_to @broken, notice: 'Broken was successfully created.' }
        @eq.update(:operational=>false)
        format.json { render :show, status: :created, location: @broken }
      else
        format.html { render :new }
        format.json { render json: @broken.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @broken.update(broken_params)
        format.html { redirect_to @broken, notice: 'Broken was successfully updated.' }
        format.json { render :show, status: :ok, location: @broken }
      else
        format.html { render :edit }
        format.json { render json: @broken.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @broken.destroy
    respond_to do |format|
      format.html { redirect_to brokens_url, notice: 'Broken was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  
  def filterDependency
    @computers = Computer.where(Dependency_id:params[:Dependency_id]).where(:operational => true)
    @printers = Printer.where(:Dependency => params[:Dependency_id]).where(:operational => true)
    @copiers = Copier.where(:Dependency => params[:Dependency_id]).where(:operational => true)
    @telephones = Telephone.where(:Dependency => params[:Dependency_id]).where(:operational => true)
    @screens = Screen.where(:Dependency => params[:Dependency_id]).where(:operational => true)
    @powers = Power.where(:Dependency => params[:Dependency_id]).where(:operational => true)
    @scanners = Scanner.where(:dependency_id => params[:Dependency_id]).where(:operational => true)
    respond_to do |format|
        format.js
    end
  end
  
  def eqKill
    @broken = Broken.new
    @broken.gender = params[:type]
    respond_to do |format|  
      case params[:type]
        when 'COMP'
          @eq = Computer.find(params[:id])
        when 'PRINT'
          @eq = Printer.find(params[:id])
        when 'COPY'
          @eq = Copier.find(params[:id])
        when 'POW'
          @eq = Power.find(params[:id])
        when 'SCREEN'
          @eq = Screen.find(params[:id])
      end
      @broken.idEquipment =  @eq.id
      @broken.Delegation_id = @eq.Delegation_id
      @broken.Dependency_id = @eq.Dependency_id
      
      format.js
    end
  end
  
  def brokenRepo
    @brokens = Broken.where(gender:'COMP')
    respond_to do |format|
      format.html# { render :layout => false  }
      format.pdf do
        pdf = BrokenEquipment.new(@brokens)
        send_data pdf.render,
          filename: "reporte_equipos_baja.pdf",
          type: 'application/pdf',
          disposition: 'inline'
       end
    end
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_broken
      @broken = Broken.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def broken_params
      params.require(:broken).permit(:idEquipment, :notes, :picOf, :picSerie, :pic, :gender, :Delegation_id, :Dependency_id, :User_id)
    end
end
