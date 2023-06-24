class AddColumnToTimeLog < ActiveRecord::Migration[7.0]
  def change
    add_column :time_logs, :do_list_id, :string
  end
end
