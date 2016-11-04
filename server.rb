require 'pry'
require 'sinatra'

get '/' do
  erb :index
end

get '/mv' do
  erb :mv
end

get '/cp' do
  erb :cp
end

get '/touch' do
  erb :touch
end

get '/mkdir' do
  erb :mkdir
end

get '/ls' do
  erb :ls
end

get '/command-line' do
  erb :command_line
end

get '/search' do
  erb :search
end

post '/search' do
  @query = params[:query]
  erb :search
end

not_found do
  status 404
  erb :not_found
end
