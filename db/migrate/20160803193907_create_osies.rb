class CreateOsies < ActiveRecord::Migration
  def change
    create_table :osies do |t|
      t.string :name
      t.string :version
      t.references :User, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
