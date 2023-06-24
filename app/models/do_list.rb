class DoList < ApplicationRecord
  # ulidのinclude
  include Identifiable
  # リレーション
  belongs_to :user
  has_many :time_logs
end
