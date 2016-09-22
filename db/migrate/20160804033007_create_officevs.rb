class CreateOfficevs < ActiveRecord::Migration
  def change
    create_table :officevs do |t|
      t.string :name
      t.references :User, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
