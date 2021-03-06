class ConsumablesController < ApplicationController
  before_action :set_consumable, only: [:show, :edit, :update, :destroy]
  
  # GET /consumables
  # GET /consumables.json
  def index
    @consumables = Consumable.all.paginate(page: params[:page], per_page: 10 )
  end

  # GET /consumables/1
  # GET /consumables/1.json
  def show
  end

  # GET /consumables/new
  def new
    @consumable = Consumable.new
  end

  # GET /consumables/1/edit
  def edit
  end

  # POST /consumables
  # POST /consumables.json
  def create
    
    @consumable = Consumable.new(consumable_params)
    
    respond_to do |format|
      if @consumable.save
        set_me
        format.html { redirect_to @consumable, notice: 'Consumible fue creado satisfactoriamente.' }
        format.json { render :show, status: :created, location: @consumable }
      else
        format.html { render :new }
        format.json { render json: @consumable.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /consumables/1
  # PATCH/PUT /consumables/1.json
  def update
    respond_to do |format|
      if @consumable.update(consumable_params)
        set_me
        format.html { redirect_to @consumable, notice: 'Consumible fue actualizado satisfactoriamente.' }
        format.json { render :show, status: :ok, location: @consumable }
      else
        format.html { render :edit }
        format.json { render json: @consumable.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /consumables/1
  # DELETE /consumables/1.json
  def destroy
    @consumable.destroy
    respond_to do |format|
      format.html { redirect_to consumables_url, notice: 'Consumible fue borrado satisfactoriamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_consumable
      @consumable = Consumable.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def consumable_params
      params.require(:consumable).permit(:genus, :model, :Copier_id, :Printer_id, :User_id)
    end

    def set_me
      @consumable.User_id = current_user.id
      @consumable.save!
    end
end
