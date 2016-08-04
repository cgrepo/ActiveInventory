class CreateComputerBrands < ActiveRecord::Migration
  def change
    create_table :computer_brands do |t|
      t.string :name
      t.genus	:modelc
      
      t.timestamps null: false
    end
  end
end
