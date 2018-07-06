class CreateBrokens < ActiveRecord::Migration
  def change
    create_table :brokens do |t|
      #t.integer :idDelegation
      #t.integer :idDependency
      t.integer :idEquipment
      t.string :gender
      t.text :notes
      t.string :picOf
      t.string :picSerie
      t.string :pic
      #t.references :Dependency, index: true, foreign_key: true
      #t.references :User, index: true, foreign_key: true
      #t.references :Delegation, index: true, foreign_key: true
      
      t.timestamps null: false
    end
  end
end
