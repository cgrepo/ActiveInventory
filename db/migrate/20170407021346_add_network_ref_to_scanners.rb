class AddNetworkRefToScanners < ActiveRecord::Migration
  def change
    add_reference :scanners, :Network, index: true, foreign_key: true
  end
end
