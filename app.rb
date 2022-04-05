require 'sinatra'
require "sinatra/reloader" if development?

get '/' do
  "hello"      
 end  

 get '/secret' do
  "hello again"
 end

 get '/cat' do
  erb(@my_name = ["Amigo", "Misty", "Almond"].sample )
  erb(:index)
 end

 
