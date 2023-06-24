class DoList < ApplicationRecord
  # ulidのinclude
  include Identifiable
  # リレーション
  # belong_to :user
  # has_many :do_logs
end
