class AddPictureToComputers < ActiveRecord::Migration
  def change
    add_column :computers, :picture1, :string
    add_column :computers, :picture2, :string
    add_column :computers, :picture3, :string
  end
end
