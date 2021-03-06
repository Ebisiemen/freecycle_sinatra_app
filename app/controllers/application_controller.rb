require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    #enables the sessions hash 
    enable :sessions 
    #set a session secret for an extra layer of security 
    set :session_secret, "super_secret_session"
  end

  get "/" do
    if logged_in?
      redirect "/users/#{current_user.id}"
    else 
      erb :welcome
    end 
  end

  helpers do 

    def logged_in?
      !!current_user
    end 

    #keeps track of the logged in user 
    def current_user 
      User.find_by(id: session[:user_id])
    end 
  end 

end
