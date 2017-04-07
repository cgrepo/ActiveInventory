class AddDependencyRefToScanners < ActiveRecord::Migration
  def change
    add_reference :scanners, :dependency, index: true, foreign_key: true
  end
end
