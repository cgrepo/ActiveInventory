class CreateCommonErrors < ActiveRecord::Migration
  def change
    create_table :common_errors do |t|
      t.string :description

      t.timestamps null: false
    end
  end
end
