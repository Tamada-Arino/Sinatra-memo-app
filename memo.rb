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
  @id = params[:id].to_i
  @memo = CSV.read('memos.csv', headers: true, header_converters: :symbol)[@id]
  erb :show
end

post '/memos' do
  CSV.open('memos.csv', 'a') do |csv|
    csv << [params[:title], params[:text]]
  end
  redirect '/'
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
