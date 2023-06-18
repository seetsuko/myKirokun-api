module Identifiable
  extend ActiveSupport::Concern

  included do
    # memo: primary_keyのデフォルトの値は`id`
    attribute primary_key, :string, default: -> { ULID.generate }
  end
end
