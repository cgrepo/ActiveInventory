class CreateEquipmentLogs < ActiveRecord::Migration
  def change
    create_table :equipment_logs do |t|
      t.string :genus
      t.string :key
      t.date :inDate
      t.text :diagnosis
      t.text :solution
      t.date :outDate
      t.references :User, index: true, foreign_key: true
      
      t.timestamps null: false
    end
  end
end
