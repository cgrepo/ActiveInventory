class AddUserRefToScanners < ActiveRecord::Migration
  def change
    add_reference :scanners, :User, index: true, foreign_key: true
  end
end
