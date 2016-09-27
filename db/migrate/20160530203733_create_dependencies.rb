class CreateDependencies < ActiveRecord::Migration
  def change
    create_table :dependencies do |t|
      t.string :name
      t.string :address
      t.string :telephone
      t.string :responsable
      t.string :responsable_email
      t.references :User, index: true, foreign_key: true
      t.references :Delegation, index: true, foreign_key: true
      
      t.timestamps null: false
    end
  end
end
