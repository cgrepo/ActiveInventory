class AddDelegationRefToScanners < ActiveRecord::Migration
  def change
    add_reference :scanners, :Delegation, index: true, foreign_key: true
  end
end
