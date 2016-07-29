class CreateCopiers < ActiveRecord::Migration
  def change
    create_table :copiers do |t|
      t.string :ninventary
      t.string :nserie
      t.string :brand
      t.string :model
      t.string :nfactura
      t.date :buy_date
      t.boolean :net, :default => false
      t.string  :net_ip
      t.string  :net_mask
      t.string  :net_mac
      t.boolean :wifi, :default => false
      t.string  :wifi_ip
      t.string  :wifi_mask
      t.string  :wifi_mac
      t.boolean :operational, :default => true
      t.string :reazon
      t.text :notes
      t.references :Network, index: true, foreign_key: true
      t.references :Dependency, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
