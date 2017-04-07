class AddDelegationRefToScanners < ActiveRecord::Migration
  def change
    add_reference :scanners, :delegation, index: true, foreign_key: true
  end
end
