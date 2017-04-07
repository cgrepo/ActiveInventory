class AddDependencyRefToScanners < ActiveRecord::Migration
  def change
    add_reference :scanners, :Dependency, index: true, foreign_key: true
  end
end
