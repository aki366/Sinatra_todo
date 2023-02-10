require 'sinatra'
require 'sinatra/reloader'

get '/' do
  'hello!!'
end

get '/path/to' do
  "this is [/path/to]"
end
