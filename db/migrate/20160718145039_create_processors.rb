class CreateProcessors < ActiveRecord::Migration
  def change
    create_table :processors do |t|
      t.string :brand
      t.string :genus
      t.string :modelp
      t.string :speed

      t.timestamps null: false
    end
  end
end
