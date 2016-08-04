class CreateBrandModels < ActiveRecord::Migration
  def change
    create_table :brand_models do |t|
      t.string :description
      t.string :upsb
      t.string :upsm
      t.string :monitorb
      t.string :monitorm
      t.string :copierb
      t.string :copierm
      t.string :printeb
      t.string :printerm

      t.timestamps null: false
    end
  end
end
