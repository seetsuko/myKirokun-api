class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :password_digest
      t.string :email, default: ""
      t.string :uid, null: false, default: ""

      t.timestamps

      t.index :uid, unique: true  # 同じuidによる登録を防ぐ

    end
  end
end
