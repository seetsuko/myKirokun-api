class CreateLists < ActiveRecord::Migration[7.0]
  def change
    create_table :lists do |t|
      t.string :list
      t.string :time
      t.timestamps
    end
  end
end
