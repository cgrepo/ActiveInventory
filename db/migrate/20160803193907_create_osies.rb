class CreateOsies < ActiveRecord::Migration
  def change
    create_table :osies do |t|
      t.string :name
      t.string :version

      t.timestamps null: false
    end
  end
end
