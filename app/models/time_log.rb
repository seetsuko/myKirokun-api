class TimeLog < ApplicationRecord
  # ulidのinclude
  include Identifiable
  # リレーション
  belongs_to :do_list
end
