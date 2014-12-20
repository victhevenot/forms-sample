require 'bundler'
Bundler.require
require_relative 'user.rb'


class MyApp < Sinatra::Base

  get '/' do 

    erb :index
  end


  post '/results' do
    puts params
    @user = User.new
    @user.name = params[:name]
    @user.age = params[:age]
    @user.bday = params[:bday]
    erb :users
  end
end