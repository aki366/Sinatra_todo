# frozen_string_literal: true

require 'sinatra'
require 'sinatra/reloader'
require 'json'
require 'cgi/escape'

FILE_PATH = 'public/memos.json'

def get_memos
  File.open(FILE_PATH) { |f| JSON.parse(f.read) }
end

def set_memos(memos)
  File.open(FILE_PATH, 'w') { |f| JSON.dump(memos, f) }
end

get '/' do
  erb :top
end

get '/memos' do
  @memos = get_memos
  erb :index
end

get '/memos/new' do
  erb :new
end

get '/memos/:id' do
  memos = get_memos
  @title = memos[params[:id]]['title']
  @content = memos[params[:id]]['content']
  erb :show
end

post '/memos' do
  title = params[:title]
  content = params[:content]
  if title != ''
    memos = get_memos
    id = (memos.keys.map(&:to_i).max + 1).to_s
    memos[id] = { 'title' => title, 'content' => content }
    set_memos(memos)
  end
  redirect '/memos'
end

get '/memos/:id/edit' do
  memos = get_memos
  @title = memos[params[:id]]['title']
  @content = memos[params[:id]]['content']
  erb :edit
end

patch '/memos/:id' do
  title = params[:title]
  content = params[:content]
  if title != ''
    memos = get_memos
    memos[params[:id]] = { 'title' => title, 'content' => content }
    set_memos(memos)
  end
  redirect "/memos/#{params[:id]}"
end

delete '/memos/:id' do
  memos = get_memos
  memos.delete(params[:id])
  set_memos(memos)

  redirect '/memos'
end
