class CreatePowers < ActiveRecord::Migration
  def change
    create_table :powers do |t|
      t.string :ninventary
      t.string :nserie
      t.string :brand
      t.string :model
      t.string :nfactura
      t.date :buy_date
      t.boolean :no_break, :default => false
      t.boolean :operational, :default => true
      t.string :reazon
      t.text :notes
      t.references :Dependency, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
