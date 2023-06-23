class CreateDoLogs < ActiveRecord::Migration[7.0]
  def change
    create_table :do_logs, id: :string do |t|
      t.string :time

      t.timestamps
    end
  end
end
