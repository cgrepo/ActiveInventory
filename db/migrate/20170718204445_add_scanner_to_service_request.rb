class AddScannerToServiceRequest < ActiveRecord::Migration
  def change
    #add_reference :service_requests, :Scanner, index: true, foreign_key: true
    add_reference :service_requests, :Scanner, index: true
    add_foreign_key :service_requests, :Scanners
  end
end
