class CreateTelephones < ActiveRecord::Migration
  def change
    create_table :telephones do |t|
      t.string :ninventary
      t.string :nserie
      t.string :brand
      t.string :model
      t.date :buy_date
      t.string :genus
      t.string :number
      t.boolean :operational
      t.text :reazon
      t.text :notes
      t.references :Dependency, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
