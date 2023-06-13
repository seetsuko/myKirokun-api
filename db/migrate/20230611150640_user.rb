class User < ActiveRecord::Migration[7.0]
  def changeProgram Files
    create_table :user do |t|
    add_column :users, :uid, :string
  end
end
