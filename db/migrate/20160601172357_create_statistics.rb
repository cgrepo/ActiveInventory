class CreateStatistics < ActiveRecord::Migration
  def change
    create_table :statistics do |t|
      t.string :month
      t.integer :sheets
      t.integer :consumable
      t.references :Copier, index: true, foreign_key: true
      t.references :Printer, index: true, foreign_key: true
      t.references :User, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
