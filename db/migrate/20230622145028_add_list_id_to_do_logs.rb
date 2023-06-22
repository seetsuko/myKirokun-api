class AddListIdToDoLogs < ActiveRecord::Migration[7.0]
  def change
    add_column :do_logs, :list_id, :string
  end
end
