class AddNetworkRefToScanners < ActiveRecord::Migration
  def change
    add_reference :scanners, :network, index: true, foreign_key: true
  end
end
