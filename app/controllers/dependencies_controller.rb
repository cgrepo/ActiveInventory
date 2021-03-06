class DependenciesController < ApplicationController
  before_action :set_dependency, only: [:show, :edit, :update, :destroy]

  #-----USUAL_ACTIONS----------------------------
    # GET /dependencies
    # GET /dependencies.json
    def index

      @delegations = Delegation.all.pluck(:id,:name)
      @delegation = params[:Delegation]

      @dependencies = Dependency.all.order(:name).where(Delegation: @delegation).paginate(page: params[:page], per_page: 15 )
      
      respond_to do |format|
        format.html {}
        format.js {}
      end
    end
    
    # GET /dependencies/1
    # GET /dependencies/1.json
    def show
    end

    # GET /dependencies/new
    def new
      @dependency = Dependency.new
    end

    # GET /dependencies/1/edit
    def edit
    end

    # POST /dependencies
    # POST /dependencies.json
    def create
      @dependency = Dependency.new(dependency_params)
      
      respond_to do |format|
        if @dependency.save
          set_me
          format.html { redirect_to @dependency, notice: 'Dependencia fue creada satisfactoriamente.' }
          format.json { render :show, status: :created, location: @dependency }
        else
          format.html { render :new }
          format.json { render json: @dependency.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /dependencies/1
    # PATCH/PUT /dependencies/1.json
    def update
      respond_to do |format|
        if @dependency.update(dependency_params)
          set_me
          
          format.html { redirect_to @dependency, notice: 'Dependencia fue actualizada satisfactoriamente.' }
          format.json { render :show, status: :ok, location: @dependency }
        else
          format.html { render :edit }
          format.json { render json: @dependency.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /dependencies/1
    # DELETE /dependencies/1.json
    def destroy
      @dependency.destroy
      respond_to do |format|
        format.html { redirect_to dependencies_url, notice: 'Dependencia fue eliminada satisfactoriamente.' }
        format.json { head :no_content }
      end
    end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dependency
      @dependency = Dependency.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dependency_params
      params.require(:dependency).permit(:name, :address, :telephone, :responsable, :responsable_email, :Delegation_id)
    end

    def set_me
      @dependency.User_id = current_user.id
      @dependency.save!
    end
end