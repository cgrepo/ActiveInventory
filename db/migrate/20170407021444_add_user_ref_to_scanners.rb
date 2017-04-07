class AddUserRefToScanners < ActiveRecord::Migration
  def change
    add_reference :scanners, :user, index: true, foreign_key: true
  end
end
