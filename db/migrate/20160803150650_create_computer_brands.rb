class CreateComputerBrands < ActiveRecord::Migration
  def change
    create_table :computer_brands do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
