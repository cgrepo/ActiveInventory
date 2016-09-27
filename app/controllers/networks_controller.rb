class NetworksController < ApplicationController
  before_action :set_network, only: [:show, :edit, :update, :destroy]
  
  # GET /networks
  # GET /networks.json
  def index
    @networks = Network.all.paginate(page: params[:page], per_page: 10 )
  end

  # GET /networks/1
  # GET /networks/1.json
  def show
  end

  # GET /networks/new
  def new
    @network = Network.new
  end

  # GET /networks/1/edit
  def edit
  end

  # POST /networks
  # POST /networks.json
  def create
    @network = Network.new(network_params)

    respond_to do |format|
      if @network.save
        set_me
        format.html { redirect_to @network, notice: 'Red fue creada satisfactoriamente.' }
        format.json { render :show, status: :created, location: @network }
      else
        format.html { render :new }
        format.json { render json: @network.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /networks/1
  # PATCH/PUT /networks/1.json
  def update
    
    respond_to do |format|
      if @network.update(network_params)
        set_me
        format.html { redirect_to @network, notice: 'Red fue actualizada satisfactoriamente.' }
        format.json { render :show, status: :ok, location: @network }
      else
        format.html { render :edit }
        format.json { render json: @network.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /networks/1
  # DELETE /networks/1.json
  def destroy
    @network.destroy
    respond_to do |format|
      format.html { redirect_to networks_url, notice: 'Red fue borrada satisfactoriamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_network
      @network = Network.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def network_params
      params.require(:network).permit(:linktype, :genus, :location, :iprange, :ip, :wifirouter, :ssid_name)
    end

    def set_me
      @network.User_id = current_user.id
      @network.save!
    end
end
