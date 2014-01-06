require 'redis'

redis = Redis.new(:host => ENV["REDIS_HOST"] || "localhost", :port => ENV["REDIS_PORT"] || 6379)

puts("waiting for Redis data on test list")
loop do
  data = redis.blpop('test')
  puts(data.inspect)
end