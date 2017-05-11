class AddHostNameToPrinters < ActiveRecord::Migration
  def change
    add_column :printers, :hostname, :string
  end
end
