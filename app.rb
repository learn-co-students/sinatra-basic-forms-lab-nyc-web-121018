require_relative 'config/environment'

class App < Sinatra::Base

#get request to home page , link to index
  get '/' do
  erb :index
  end

  # post '/' do
  # erb :create_puppy
  # end

#set up controller to view form
  get '/new' do # from the index.erb href="/new"
  erb :create_puppy #form is in this file
  end

#third controller action that takes user input and renders view for new puppy
  post '/puppy' do
  @puppy = Puppy.new(params['name'],params['breed'], params['age'])
  erb :display_puppy # displays puppy to user , makes results dynamic ie: @puppy.name
end
end
