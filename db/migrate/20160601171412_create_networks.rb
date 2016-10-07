class CreateNetworks < ActiveRecord::Migration
  def change
    create_table :networks do |t|
      t.string :linktype
      t.boolean :wifirouter, :default => false
      t.string :ssid_name	
      t.string :location
      t.string :iprange
      t.string :ip
      t.string :associed_number
      t.references :User, index: true, foreign_key: true
      
      t.timestamps null: false
    end
  end
end
