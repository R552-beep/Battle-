require 'sinatra'
require "sinatra/reloader" if development?

get '/' do
  "hello"      
 end  

 get '/secret' do
  "hello again"
 end

 get '/cat' do
  erb(:index)
 end
