class User < ActiveRecord::Migration[7.0]
  def create
    add_column :users, :uid, :string
  end
end
