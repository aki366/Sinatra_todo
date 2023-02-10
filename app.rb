require 'sinatra'
require 'sinatra/reloader'

get '/' do
  'hello!!'
  'http://localhost:4567/top.html'
  'http://localhost:4567/path/to'
  "http://localhost:4567/[name].html"
end

get '/path/to' do
  "this is [/path/to]"
end

get '/hello/*' do |name|
  "hello #{name}. how are you?"
end

get '/erb_template_page' do
  erb :erb_template_page
end
