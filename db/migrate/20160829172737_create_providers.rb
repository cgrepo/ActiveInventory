class CreateProviders < ActiveRecord::Migration
  def change
    create_table :providers do |t|
      t.string :name
      t.string :address
      t.string :telephone
      t.string :rfc
      t.string :email
      t.references :User, index: true, foreign_key: true
      
      t.timestamps null: false
    end
  end
end
