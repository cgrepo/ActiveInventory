class BridgeHelperController < ApplicationController
  def get_dependencies
  	@dependencies = Dependency.where(Delegation:params[:Delegation_id])
    respond_to do |format|
      format.js
    end
  end
  def get_models
	  @models = BrandModel.where(description:params[:genus]).where(:brandx => params[:brand]) 
	  respond_to do |format|
	    format.js
	  end
  end
end
