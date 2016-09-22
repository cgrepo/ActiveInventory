class CreateHardds < ActiveRecord::Migration
  def change
    create_table :hardds do |t|
      t.float :size
      t.string :tsize
      t.references :User, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
