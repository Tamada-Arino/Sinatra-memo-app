require 'sinatra'
require 'sinatra/reloader' 
require 'csv'

get '/' do
  @memos = CSV.read('memos.csv', headers: true, header_converters: :symbol)
  erb :index
end

get '/memos/new' do
  erb :new
end

get '/memos/:id' do
  @memo = CSV.read('memos.csv', headers: true, header_converters: :symbol)[params[:id].to_i]
  erb :show
end

post '/memos' do
#   メモ投稿処理
end

get '/memos/:id/edit' do
#   メモ修正画面
  erb :edit
end

patch '/memos/:id' do
#   メモ修正処理
end

delete '/memos/:id' do
#   メモ削除処理
end
