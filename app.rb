require "sinatra"
require "sinatra/reloader" if development?

get '/' do
  "Hello"
end

get '/secret' do
  "This is a secret message"
end

get '/page_1' do
  "Another empty page"
end

get '/random-cat' do
@name = ["Amigo", "Misty", "Almond"].sample
erb :index
end

post '/named-cat' do
  p params
@name = params[:name]
erb :index
end

get '/cat-form' do
  erb :cat_form
end