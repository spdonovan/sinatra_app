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

get '/cat' do
"<div>
<img src ='https://i.imgur.com/jFaSxym.png'>
</div>"
end