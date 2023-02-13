require 'sinatra'
require 'sinatra/reloader'
require 'json'

FILE_PATH = 'public/memos.json'

def get_memos(file_path)
  File.open(file_path) { |f| JSON.parse(f.read) }
end

def set_memos(file_path, memos)
  File.open(file_path, 'w') { |f| JSON.dump(memos, f) }
end

get '/' do
  "hello!!"
  "http://localhost:4567/top.html"
  "http://localhost:4567/path/to"
  "http://localhost:4567/[name].html"
end

get '/memos' do
  @memos = get_memos(FILE_PATH)
  erb :index
end

get '/memos/new' do
  erb :new
end

get '/memos/:id' do
  memos = get_memos(FILE_PATH)
  @title = memos[params[:id]]['title']
  @content = memos[params[:id]]['content']
  erb :show
end

post '/memos' do
  title = params[:title]
  content = params[:content]

  memos = get_memos(FILE_PATH)
  id = (memos.keys.map(&:to_i).max + 1).to_s
  memos[id] = { 'title' => title, 'content' => content }
  set_memos(FILE_PATH, memos)

  redirect '/memos'
end

get '/memos/:id/edit' do
  memos = get_memos(FILE_PATH)
  @title = memos[params[:id]]['title']
  @content = memos[params[:id]]['content']
  erb :edit
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
