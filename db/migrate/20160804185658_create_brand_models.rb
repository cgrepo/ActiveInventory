class CreateBrandModels < ActiveRecord::Migration
  def change
    create_table :brand_models do |t|
      t.string :description
      t.string :brandx
      t.string :modelx
      t.references :User, index: true, foreign_key: true
      
      t.timestamps null: false
    end
  end
end
