class CreateScanners < ActiveRecord::Migration
  def change
    create_table :scanners do |t|
      t.string :ninventary
      t.string :nserie
      t.string :brand
      t.string :model
      t.string :nfactura
      t.date :buy_date
      t.boolean :net, :default => false
      t.string :ipnet
      t.string :masknet
      t.string :netmac
      t.boolean :operational, :default => true
      t.text :reazon
      t.references :delegations, index: true, foreign_key: true
      t.references :Dependency, index: true, foreign_key: true
      t.references :Network, index: true, foreign_key: true
      t.references :User, index: true, foreign_key: true
      
      t.timestamps null: false
    end
  end
end
