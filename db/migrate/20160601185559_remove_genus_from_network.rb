class RemoveGenusFromNetwork < ActiveRecord::Migration
  def change
    remove_column :networks, :genus, :string
  end
end
