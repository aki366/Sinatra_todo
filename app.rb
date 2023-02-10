require 'sinatra'
require 'sinatra/reloader'

get '/' do
  "hello!!"
  "http://localhost:4567/top.html"
  "http://localhost:4567/path/to"
  "http://localhost:4567/[name].html"
end

get '/top' do
  "hello!!"
  "http://localhost:4567/top.html"
  "http://localhost:4567/path/to"
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

get '/markdown_template_page' do
  markdown :markdown_template_page
end

# erbとMarkdownを組み合わせる
get '/erb_and_md_template_page' do
  erb :erb_and_md_template_page, :locals => { :md => markdown(:erb_and_md_template_page) }
end
