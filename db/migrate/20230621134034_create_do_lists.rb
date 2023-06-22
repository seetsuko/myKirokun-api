class CreateDoLists < ActiveRecord::Migration[7.0]
  def change
    create_table :do_lists , id: :string do |t|
      t.string :title
      t.timestamps
    end
  end
end
