class CreatePrinters < ActiveRecord::Migration
  def change
    create_table :printers do |t|
      t.string :ninventary
      t.string :nserie
      t.string :brand
      t.string :model
      t.string :nfactura
      t.date :buy_date
      t.string :genus
      t.boolean :operational
      t.string :reazon
      t.text :notes
      t.references :Dependency, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
