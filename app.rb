require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'
 
class Battle < Sinatra::Base
   configure :development do
     register Sinatra::Reloader
   end

  enable :sessions
  
   get '/' do
     erb(:index)
   end

   post '/names' do
     $player_1 = Player.new(params[:player_1])
     $player_2 = Player.new(params[:player_2])
     redirect '/play'
   end

   get '/play' do
    @player_1 = $player_1.name
    @player_2 = $player_2.name
    @player_1_attack = session[:player_1_attack]
    @player_2_attack = session[:player_2_attack]
    erb(:play)
  end

   post '/play' do
    session[:player_1_attack] = params[:player_1_attack]
    session[:player_2_attack] = params[:player_2_attack]
    redirect '/play'
   end

   
 end
  