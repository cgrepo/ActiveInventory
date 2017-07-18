class AddScannerToServiceRequest < ActiveRecord::Migration
  def change
    add_reference :service_requests, :Scanner, index: true, foreign_key: true
  end
end
