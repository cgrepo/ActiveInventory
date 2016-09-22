class CreateComputerBrands < ActiveRecord::Migration
  def change
    create_table :computer_brands do |t|
      t.string :name
      t.string :model
      t.references :User, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
