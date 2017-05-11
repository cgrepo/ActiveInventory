class AddHostNameToCopier < ActiveRecord::Migration
  def change
    add_column :copiers, :hostname, :string
  end
end
