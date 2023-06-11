FirebaseIdToken.configure do |config|
  config.redis = Redis.new
  config.project_ids = ["nonnda-72fab"]
end