require 'sinatra'
require "sinatra/reloader" if development?

get '/' do
  "hello"      
 end  

 get '/secret' do
  "hello again"
 end

 get '/random_cat' do
  erb(@my_name = ["Amigo", "Misty", "Almond"].sample )
  erb(:index)
 end

 post '/named_cat' do
  p params
  @my_name = params[:name]
  erb(:index)
 end

 get '/form' do
  erb(:form)
 end
 
