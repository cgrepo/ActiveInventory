class CreateBrokens < ActiveRecord::Migration
  def change
    create_table :brokens do |t|
      t.string :idEquipment
      t.text :notes
      t.string :picOf
      t.string :picSerie
      t.string :pic

      t.timestamps null: false
    end
  end
end
