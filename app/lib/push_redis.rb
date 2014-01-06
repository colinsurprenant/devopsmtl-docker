require 'redis'

redis = Redis.new(:host => ENV["REDIS_HOST"] || "localhost", :port => ENV["REDIS_PORT"] || 6379)

puts("pushing data on test list")
i = 0
loop do
  redis.rpush('test', "hello world #{i += 1}")
  sleep(1)
end