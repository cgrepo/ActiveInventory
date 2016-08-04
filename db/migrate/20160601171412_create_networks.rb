class CreateNetworks < ActiveRecord::Migration
  def change
    create_table :networks do |t|
      t.string :linktype
      t.boolean :wifirouter, :default => false
      t.string :ssid_name	
      t.string :location
      t.string :iprange
      t.string :ip

      t.timestamps null: false
    end
  end
end
