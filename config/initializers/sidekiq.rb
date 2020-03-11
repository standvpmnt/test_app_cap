Sidekiq.configure_server do |config|
  config.redis = { url: 'redis-test-001.bewjhq.0001.aps1.cache.amazonaws.com:6379' }
end

Sidekiq.configure_client do |config|
  config.redis = { url: 'redis-test-001.bewjhq.0001.aps1.cache.amazonaws.com:6379' }
end