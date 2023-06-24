class ChangeDoLogsToTimeLogs < ActiveRecord::Migration[7.0]
  def change
    rename_table :do_logs, :time_logs
  end
end
