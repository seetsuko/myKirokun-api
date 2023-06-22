class AddUserIdToDoLists < ActiveRecord::Migration[7.0]
  def change
    add_column :do_lists, :user_id, :string
  end
end
