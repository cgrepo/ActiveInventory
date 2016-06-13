class ReportsController < ApplicationController
  def index
   	respond_to do |format|
   	 	format.html { render "reports/index", :layout => false  } 
   	end
   	
  end
end
