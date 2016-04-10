require 'rubygems'
require 'sinatra'

use Rack::Session::Cookie, :key => 'rack.session',
                           :path => '/',
                           :secret => 'hazukitran'

get '/' do
  erb :set_name
end

post '/set_name' do
  session[:player_name] = params[:player_name]
  redirect "/game"
end

get "/game" do
  erb :game
end