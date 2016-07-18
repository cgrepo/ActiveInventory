class CreateComputers < ActiveRecord::Migration
  def change
    create_table :computers do |t|
      t.string  :ninventary
      t.string  :nserie
      t.string  :brand
      t.string  :model
      t.string  :nfactura
      t.date    :buy_date
      t.string  :genus
      t.string  :processor
      t.string  :hd
      t.string  :memory
      t.boolean :bluetooth
      t.string  :macbluetooth
      t.string  :os
      t.string  :voffice
      t.string  :users
      t.string  :name
      t.string  :workgroup
      t.boolean :wifi
      t.string  :maclan
      t.string  :iplan
      t.string  :masklan
      t.string  :macwifi
      t.string  :ipwifi
      t.string  :maskwifi
      t.boolean :operational
      t.text    :reazon
      t.text    :notes
      t.references :Network, index: true, foreign_key: true
      t.references :Dependency, index: true, foreign_key: true
      t.references :Worker, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
