class ServiceRequestsController < ApplicationController
  before_action :set_service_request, only: [:show, :edit, :update, :destroy]
  
  # GET /service_requests
  # GET /service_requests.json
  def index
    @service_requests = ServiceRequest.all.order(:id).paginate(page: params[:page], per_page: 10 )
  end

  # GET /service_requests/1
  # GET /service_requests/1.json
  def show
  end

  # GET /service_requests/new
  def new
    @service_request = ServiceRequest.new
    set_vars     
  end

  # GET /service_requests/1/edit
  def edit
  end

  # POST /service_requests
  # POST /service_requests.json
  def create
    @service_request = ServiceRequest.new(service_request_params)
    @service_request.idFolio = setFolio
    
    respond_to do |format|
      set_vars
      if @service_request.save
        set_me
        format.html { redirect_to @service_request, notice: 'Solicitud de servicio creada satisfactoriamente.' }
        format.json { render :show, status: :created, location: @service_request }
      else
        format.html { render :new }
        format.json { render json: @service_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /service_requests/1
  # PATCH/PUT /service_requests/1.json
  def update
    respond_to do |format|
      if @service_request.update(service_request_params)
        set_me
        format.html { redirect_to @service_request, notice: 'Solicitud de servicio actualizada satisfactoriamente.' }
        format.json { render :show, status: :ok, location: @service_request }
      else
        format.html { render :edit }
        format.json { render json: @service_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /service_requests/1
  # DELETE /service_requests/1.json
  def destroy
    @service_request.destroy
    respond_to do |format|
      format.html { redirect_to service_requests_url, notice: 'Solicitud de servicio borrada satisfactoriamente.' }
      format.json { head :no_content }
    end
  end

  # POULATE 
    def get_dependencies
      @dependencies = Dependency.where(Delegation:params[:Delegation_id])

      respond_to do |format|
        format.js
      end
    end
    
    def get_equipments
      @copiers = Copier.where(:Dependency => params[:Dependency_id])
      @printers = Printer.where(:Dependency => params[:Dependency_id])
      @telephones = Telephone.where(:Dependency => params[:Dependency_id])
      @screens = Screen.where(:Dependency => params[:Dependency_id])
      @powers = Power.where(:Dependency => params[:Dependency_id])
      @scanners = Scanner.where(:Dependency => params[:Dependency_id])
      
      respond_to do |format|
        format.js
      end
    end
  
  def get_pdf
    @service_request = ServiceRequest.find(params[:service_request_id])
    
    respond_to do |format|
      format.pdf do
        
        pdf = ServiceRequestPdf.new(@service_request)
        
        send_data pdf.render, 
          filename: "solicitud_servicio_#{@service_request.id}.pdf",
          type: 'application/pdf',
          disposition: 'inline'
      end
    end
  end

  private
    
    def set_vars
      @dependencies = Dependency.all.limit 3
      @copiers = Copier.all.limit 3
      @printers = Printer.all.limit 3
      @telephones =Telephone.all.limit 3
      @screens = Screen.all.limit 3
      @powers = Power.all.limit 3
      @scanners = Scanner.all.limit 3
    end

    def setFolio
      d = Delegation.find_by(id:1)
      setKey = [(0..9),('A'..'Z')].map { |i| i.to_a }.flatten
      case d.name
        when "San Jose del Cabo"
          setAbr='SJC'
        when "Cabo San Lucas"
          setAbr='CSL'
        when "Miraflores"
          setAbr='MIR'
        when "Santiago"
          setAbr='SAN'
        when "La Rivera"
          setAbr='RIV'
      end
      Time.now.strftime("%d%m%y") + '-' + setAbr + '/' + (0...3).map { setKey[rand(setKey.length)] }.join
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_service_request
      @service_request = ServiceRequest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def service_request_params
      params.require(:service_request).permit(:idFolio, :kind, :itDiagnosis, :ProviderDiagnosis, :material, :DocumentRequest, :RequestDate, :ExecutionDate, :History, :Delegation_id, :Dependency_id, :service_request_id, :Provider_id, :Copier_id, :Printer_id, :Screen_id, :Telephone_id, :Power_id, :Scanner_id, :Priority)
    end

    def set_me
      @service_request.User_id = current_user.id
      @service_request.save!
    end

end
