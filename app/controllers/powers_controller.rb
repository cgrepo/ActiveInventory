class PowersController < ApplicationController
  before_action :set_power, only: [:show, :edit, :update, :destroy]
  ##-----NORMAL_REQUESTS------------------------
    # GET /powers
    # GET /powers.json
    def index
      @powers = Power.all.paginate(page: params[:page], per_page: 10 )
    end

    # GET /powers/1
    # GET /powers/1.json
    def show
    end

    # GET /powers/new
    def new
      @power = Power.new
    end

    # GET /powers/1/edit
    def edit
    end

    # POST /powers
    # POST /powers.json
    def create
      @power = Power.new(power_params)

      respond_to do |format|
        if @power.save
          set_me
          format.html { redirect_to @power, notice: 'Fuente creada satisfactoriamente.' }
          format.json { render :show, status: :created, location: @power }
        else
          format.html { render :new }
          format.json { render json: @power.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /powers/1
    # PATCH/PUT /powers/1.json
    def update
      respond_to do |format|
        if @power.update(power_params)
          set_me
          format.html { redirect_to @power, notice: 'Fuente actualizada satisfactoriamente.' }
          format.json { render :show, status: :ok, location: @power }
        else
          format.html { render :edit }
          format.json { render json: @power.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /powers/1
    # DELETE /powers/1.json
    def destroy
      @power.destroy
      respond_to do |format|
        format.html { redirect_to powers_url, notice: 'Fuente eliminada satisfactoriamente.' }
        format.json { head :no_content }
      end
    end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_power
      @power = Power.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def power_params
      params.require(:power).permit(:ninventary, :nserie, :brand, :model, :nfactura, :buy_date, :no_break, :operational, :reazon, :notes, :Delegation_id, :Dependency_id)
    end

    def set_me
      @power.User_id = current_user.id
      @power.save!
    end
end
