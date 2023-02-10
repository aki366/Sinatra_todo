require 'sinatra'
require 'sinatra/reloader'

get '/' do
  'hello!!'
  'http://localhost:4567/top.html'
  'http://localhost:4567/path/to'
end

get '/path/to' do
  "this is [/path/to]"
end
