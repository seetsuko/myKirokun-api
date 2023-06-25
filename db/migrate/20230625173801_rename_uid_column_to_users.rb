class RenameUidColumnToUsers < ActiveRecord::Migration[7.0]
  def change
    rename_column :users, :uid, :id
  end
end
