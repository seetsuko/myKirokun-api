class DoList < ApplicationRecord
  # ulidのinclude
  include Identifiable
  # アソシエーション
  # belong_to :user
  # has_many :do_logs
end
