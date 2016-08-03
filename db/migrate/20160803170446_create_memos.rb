class CreateMemos < ActiveRecord::Migration
  def change
    create_table :memos do |t|
      t.float :size
      t.string :msize

      t.timestamps null: false
    end
  end
end
