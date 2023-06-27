class User < ApplicationRecord
  # リレーション
  has_many :do_lists, dependent: :destroy
end
