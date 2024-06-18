require 'sinatra'
require 'sinatra/reloader' 

get '/' do
  erb :index
  @memo = "メモ：テスト"
end

# get '/' do
#   "memo 作成画面"
# end

# get '/' do
#   "めも詳細"
# end

# post '/' do
#   "めも投稿"
# end

# patch '/' do
#   "メモ修正"
# end

# delete '/' do
#   "めもけす"
# end
