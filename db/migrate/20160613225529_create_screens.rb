class CreateScreens < ActiveRecord::Migration
  def change
    create_table :screens do |t|
      t.string :ninventary
      t.string :nserie
      t.string :brand
      t.string :model
      t.string :nfactura
      t.date :buy_date
      t.float :inch
      t.boolean :operational
      t.text :reazon
      t.text :notes
      t.references :Dependency, index: true, foreign_key: true
      t.references :Computer, index: true, foreign_key: true
      t.references :User, index: true, foreign_key: true
      t.references :Delegation, index: true, foreign_key: true
      
      t.timestamps null: false
    end
  end
end
