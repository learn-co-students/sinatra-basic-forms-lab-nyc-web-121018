require_relative 'config/environment'

class App < Sinatra::Base


  # sends a 200 status code
  # has a link with the text "List a Puppy"
  # has a link to list a puppy that links to /new

  get '/' do
      erb :index
    end

    # get '/index' do
    #     erb :create_puppy
    #   end

    get '/new' do
        erb :create_puppy
      end
      post '/puppy' do
          erb :create_puppy
        end

    # sends a 200 status code
    # renders a form that can POST a name, breed, and age

      post '/puppy' do
        @puppy = Puppy.new(params['name'], params['breed'],params['age'])
          erb :display_puppy
    
        end
end
