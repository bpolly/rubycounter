require 'sinatra'
require 'redis'

get '/frank-says' do
  'Smoking is bad! Ah yes v v v v bad'
end

get '/test-page' do
  'Welcome to the 4x new new test page'
end

get '/initialize' do
  redis = Redis.new(host: 'redis-service')
  current_count = redis.get('mykey').to_i
  redis.set('mykey', current_count + 1)
  "Current count #{redis.get('mykey')}"
end

get '/' do
  redis = Redis.new(host: 'redis-service')
  "Current count #{redis.get('mykey')}"
end
