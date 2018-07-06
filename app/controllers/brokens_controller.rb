class BrokensController < ApplicationController
  before_action :set_broken, only: [:show, :edit, :update, :destroy]

  def index
    @brokens = Broken.all.paginate(page: params[:page], per_page: 10 )
  end

  def show
  end

  def new
    @broken = Broken.new
    @csl = Delegation.find_by :name=> "Cabo San Lucas"
  end

  def edit
  end

  def create
    @broken = Broken.new(broken_params)

    respond_to do |format|
      if @broken.save
        format.html { redirect_to @broken, notice: 'Broken was successfully created.' }
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
    @computers = Computer.where(Dependency_id:params[:Dependency_id])
    @printers = Printer.where(:Dependency => params[:Dependency_id])
    @telephones = Telephone.where(:Dependency => params[:Dependency_id])
    @screens = Screen.where(:Dependency => params[:Dependency_id])
    @powers = Power.where(:Dependency => params[:Dependency_id])
    @scanners = Scanner.where(:dependency_id => params[:Dependency_id])
    #byebug
    respond_to do |format|
        format.js
    end
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_broken
      @broken = Broken.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def broken_params
      params.require(:broken).permit(:idEquipment, :notes, :picOf, :picSerie, :pic)
    end
end
