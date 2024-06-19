# frozen_string_literal: true

require 'sinatra'
require 'sinatra/reloader'
require 'csv'

helpers do
  def h(text)
    Rack::Utils.escape_html(text)
  end
end

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
  if params[:title].nil? || params[:title] == ''
    @alert = 'タイトルを入力してください'
    halt erb :new
  else
    CSV.open('memos.csv', 'a') do |csv|
      csv << [h(params[:title]), h(params[:text])]
    end
    redirect '/'
  end
end

get '/memos/:id/edit' do
  @id = params[:id].to_i
  @memo = CSV.read('memos.csv', headers: true, header_converters: :symbol)[@id]
  erb :edit
end

patch '/memos/:id' do
  if params[:title].nil? || params[:title] == ''
    @alert = 'タイトルを入力してください'
    @id = params[:id].to_i
    @memo = CSV.read('memos.csv', headers: true, header_converters: :symbol)[@id]
    halt erb :edit
  else
    id = params[:id].to_i
    memos = CSV.table('memos.csv')
    memos[id][:title] = h(params[:title])
    memos[id][:text] = h(params[:text])
    CSV.open('memos.csv', 'w') do |csv|
      csv << memos.headers
      memos.each { |memo| csv << memo }
    end
    redirect "/memos/#{id}"
  end
end

delete '/memos/:id' do
  id = params[:id].to_i
  memos = CSV.table('memos.csv')
  memos.delete(id)
  CSV.open('memos.csv', 'w') do |csv|
    csv << memos.headers
    memos.each { |memo| csv << memo }
  end
  redirect '/'
end

not_found do
  erb :not_found
end
