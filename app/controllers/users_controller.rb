class UsersController < ApplicationController 

    get "/login" do 
        erb :login
    end 

    post "/login" do 
       #find the user
       user = User.find_by(email: params[:email])
       #authenticate the user 
    #    binding.pry
       if user && user.authenticate(params[:password])
            #creating a session for the user actually logs them in. creating a key value pair in the sessions hash 
            session[:user_id] = user.id 
            #redirect user's profile (users show)
            redirect "/users/#{user.id}"
       else 
        #show error message
        redirect '/login'
       end 
    end 

    #users profile route 

    get "/users/:id" do 
        # find the user 
        @user = User.find_by(id: params[:id])
        erb :'/users/show'
    end 

    #sign up route that renders sign up form 

    get "/signup" do 
        erb :'users/signup'
    end 

    #users post sign up route 
    post '/users' do 
        @user = User.create(params)
        session[:user_id] = @user.id 
        redirect "/users/#{@user.id}"
    end 

    #logout that clears the session hash 

    get '/logout' do 
        session.clear 
        redirect '/'
    end 

end 