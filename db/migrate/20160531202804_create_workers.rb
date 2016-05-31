class CreateWorkers < ActiveRecord::Migration
  def change
    create_table :workers do |t|
      t.string :name
      t.string :email
      t.text :profile
      t.references :Dependency, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
